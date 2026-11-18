#!/usr/bin/env bash

# Type checks the Swift sources the Swift converter generated as one Swift module named after the artifactId and writes
# the module to <output>/modules so dependent projects find it in this project's jar under META-INF/swift.
# The hand written runtime module J2SEForSwiftLibrary is built from runtime_dir first. The modules of the dependencies
# are re-exported (@_exported import) because Java packages are not Swift modules.
# compiler is swiftc-msvc.cmd, which runs swiftc with the Visual Studio environment and the Swift Windows SDK.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -w "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"
# A Swift module name is an identifier: microemu-cldc-for-polyglotSwift is the module microemu_cldc_for_polyglotSwift
module_name="$(printf '%s' "$artifact" | tr -c 'A-Za-z0-9_' '_')"

if [ ! -d "$source_dir" ]; then
    echo "No Swift sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/modules" "$object_dir/runtime"

# Git Bash (MSYS) needs //c so it does not turn /c into a path. Cygwin passes /c as is. stdin is closed so cmd never waits.
cmd_flag="/c"
if [ "$(uname -o)" = "Msys" ]; then
    cmd_flag="//c"
fi
swiftc() {
    cmd "$cmd_flag" "$compiler" "$@" < /dev/null 2>&1 | grep -v -E "vswhere|is not recognized as an internal|operable program or batch file"
    return "${PIPESTATUS[0]}"
}

runtime_files=()
while IFS= read -r -d '' file; do runtime_files+=("$(cygpath -w "$file")"); done < <(find "$runtime_dir" -name '*.swift' -print0 | sort -z)
if ! swiftc -emit-module -parse-as-library -module-name J2SEForSwiftLibrary "${runtime_files[@]}" -emit-module-path "$(cygpath -w "$object_dir/runtime/J2SEForSwiftLibrary.swiftmodule")" || [ ! -f "$object_dir/runtime/J2SEForSwiftLibrary.swiftmodule" ]; then
    echo "Swift runtime module failed: $runtime_dir" >&2
    exit 1
fi

files=()
while IFS= read -r -d '' file; do files+=("$(cygpath -w "$file")"); done < <(find "$source_dir" -type f -name '*.swift' -print0 | sort -z)

include_flags=(-I "$(cygpath -w "$object_dir/runtime")")
imports="$object_dir/_imports.swift"
: > "$imports"
if [ -d "$dependency_dir/modules" ]; then
    include_flags+=(-I "$(cygpath -w "$dependency_dir/modules")")
    for module in "$dependency_dir"/modules/*.swiftmodule; do
        [ -e "$module" ] || continue
        printf '@_exported import %s\n' "$(basename "$module" .swiftmodule)" >> "$imports"
    done
fi
files+=("$(cygpath -w "$imports")")

echo "Swift sources: $((${#files[@]} - 1))"
# The source paths go in a response file: many sources (microemu-midp) pass the Windows command line limit
sources_file="$object_dir/sources.txt"
: > "$sources_file"
for file in "${files[@]}"; do
    printf '"%s"\n' "$file" >> "$sources_file"
done
# A dependency module re-exports its own dependencies, so the optional ones (not transitive in Maven) are needed too:
# a missing module is taken from its jar in the local Maven repository and the module is built again
repository="$(sed -n 's:.*<localRepository>\([^<]*\)</localRepository>.*:\1:p' "$(cygpath -u "${USERPROFILE:-$HOME}")/.m2/settings.xml" 2>/dev/null | head -1)"
[ -n "$repository" ] || repository="$(cygpath -m "${USERPROFILE:-$HOME}")/.m2/repository"
missing_dir="$object_dir/missing-modules"
mkdir -p "$missing_dir"
include_flags+=(-I "$(cygpath -w "$missing_dir")")
# A project with many dependencies (microemu-midp) finds a missing module or two each attempt
for attempt in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16; do
    output="$(swiftc -emit-module -parse-as-library "${compiler_flags[@]}" -module-name "$module_name" "${include_flags[@]}" "@$(cygpath -w "$sources_file")" -emit-module-path "$(cygpath -w "$output_dir/modules/$module_name.swiftmodule")")"
    status=$?
    echo "$output"
    if [ "$status" = "0" ] && [ -f "$output_dir/modules/$module_name.swiftmodule" ]; then
        echo "Swift module: $artifact"
        exit 0
    fi
    changed=false
    while IFS= read -r module; do
        jar="$(ls "$(cygpath -u "$repository")/org/allbinary/$module"/*/"$module"-*.jar 2>/dev/null | grep -v sources | head -1)"
        # The microemu module microemu_midp_for_polyglotSwift is the org.microemu artifact microemu-midp-for-polyglotSwift
        if [ -z "$jar" ]; then
            artifact_name="$(echo "$module" | tr '_' '-')"
            jar="$(ls "$(cygpath -u "$repository")/org/microemu/$artifact_name"/*/"$artifact_name"-*.jar 2>/dev/null | grep -v sources | head -1)"
        fi
        if [ -n "$jar" ] && [ ! -e "$missing_dir/$module.swiftmodule" ]; then
            (cd "$missing_dir" && unzip -o -q -j "$jar" "META-INF/swift/modules/*" > /dev/null 2>&1)
            [ -e "$missing_dir/$module.swiftmodule" ] && changed=true
        fi
    done < <(echo "$output" | tr -d '\000' | grep -a -o "error: missing required modules\?:\? .*" | grep -a -o "'[A-Za-z0-9_]*'" | tr -d "'" | sort -u)
    # A class two dependency modules both have (ABHashtable of LogJ2ME and LogJ2SE) is ambiguous: like the Java class
    # path the first module the compiler names is used, through a typealias in this module that hides both
    while IFS= read -r name; do
        grep -q "typealias $name = " "$imports" && continue
        # Every candidate module: named by the note, or with source info the project folder (FooSwiftM) of its source path
        candidates="$(echo "$output" | tr -d '\000' | grep -a -A12 -E "'$name' is ambiguous for type lookup|ambiguous use of '$name'" | grep -a -o "found this candidate in module '[A-Za-z0-9_]*'" | grep -a -o "'[A-Za-z0-9_]*'" | tr -d "'")"
        candidates="$candidates
$(echo "$output" | tr -d '\000' | grep -a -B1 "note: found this candidate" | grep -a -o "[A-Za-z0-9_]*M[\\/]src[\\/][^ ]*[\\/]$name\.swift" | sed 's/M[\\/]src[\\/].*//')"
        # Like the Java class path, a module this project depends on (imported above) comes before a module that is only
        # here as a missing module of a dependency's optional dependency (TempBase's stub TsUtil through LoggingJ2MEAll,
        # where Java only has J2MEOnly's TsUtil)
        module=""
        while IFS= read -r candidate; do
            [ -n "$candidate" ] || continue
            if grep -qx "@_exported import $candidate" "$imports"; then
                module="$candidate"
                break
            fi
        done <<< "$candidates"
        [ -n "$module" ] || module="$(echo "$candidates" | grep -v '^$' | head -1)"
        if [ -n "$module" ]; then
            # public since public methods of this module can use the class
            printf 'public typealias %s = %s.%s\n' "$name" "$module" "$name" >> "$imports"
            changed=true
        fi
    done < <(echo "$output" | tr -d '\000' | grep -a -o -E "'[A-Za-z0-9_]*' is ambiguous for type lookup|ambiguous use of '[A-Z][A-Za-z0-9_]*'" | grep -a -o "'[A-Za-z0-9_]*'" | tr -d "'" | sort -u)
    # Two dependency modules with the same class (ABHashtable of LogJ2ME and of LogNoPlatform) are one Java class but two
    # Swift types: when a dependency's method takes the other module's class than the alias chose, the alias follows the
    # dependency (once per name, so the alias does not switch back and forth)
    while IFS='|' read -r name module; do
        [ -n "$name" ] && [ -n "$module" ] || continue
        grep -qx "$name" "$object_dir/switched-aliases.txt" 2>/dev/null && continue
        grep -q "^public typealias $name = $module\.$name\$" "$imports" && continue
        grep -v "^public typealias $name = " "$imports" > "$imports.tmp" && mv "$imports.tmp" "$imports"
        printf 'public typealias %s = %s.%s\n' "$name" "$module" "$name" >> "$imports"
        echo "$name" >> "$object_dir/switched-aliases.txt"
        changed=true
    done < <(echo "$output" | tr -d '\000' | grep -a -o "cannot convert value of type '${module_name}\.[A-Za-z0-9_]*?\?' (aka '[^']*') to expected argument type '[A-Za-z0-9_.]*?\?' (aka '[^']*')" | sed -n "s/.*value of type '${module_name}\.\([A-Za-z0-9_]*\)?\{0,1\}'.*expected argument type '[^']*' (aka '[^<']*<\{0,1\}\([A-Za-z0-9_]*\)\.\1>\{0,1\}').*/\1|\2/p" | sort -u)
    [ "$changed" = "true" ] || break
done
echo "Swift build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
