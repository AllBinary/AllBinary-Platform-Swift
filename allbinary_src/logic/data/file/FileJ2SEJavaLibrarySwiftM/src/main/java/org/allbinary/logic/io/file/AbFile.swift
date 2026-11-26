/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file

import J2SEForSwiftLibrary
// import java.io.File
// import java.io.FileFilter
// import java.io.FilenameFilter
// import java.io.IOException
// import java.net.URI
// import org.allbinary.TsUtil
// import org.allbinary.logic.io.path.AbPath
// import org.allbinary.logic.string.StringUtil

open class AbFile: JObject, AbFileInterface {
    public static let NULL_FILE: AbFile! = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING)
    fileprivate var file: File! = nil

    private func initFields() {
    
    }
    

    @discardableResult open class func createAbFileWithChild(_ file: AbFile!, _ childPathName: String!) -> AbFile! {
        return AbFile(File(file.getFile(), childPathName))
    }
    

    @discardableResult open class func createAbFile(_ filePath: String!) -> AbFile! {
        return AbFile(File(AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()))
    }
    

    @discardableResult open class func createAbFilePathAndName(_ filePath: String!, _ fileName: String!) -> AbFile! {
        return AbFile(File(AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName))
    }
    

    @discardableResult open class func createAbFileFromAbPath(_ abPath: AbPath!) -> AbFile! {
        return AbFile(File(abPath.toFileSystemString()))
    }
    

    @discardableResult open class func createAbFileFromRawPath(_ filePath: String!) -> AbFile! {
        return AbFile(File(filePath))
    }
    

    public init(_ file: File!) {
        super.init()
        self.initFields()
        self.file = file
    }
    

    @discardableResult open func getFile() -> File! {
        return self.file
    }
    

    @discardableResult open func getName() -> String! {
        return self.file.getName()
    }
    

    @discardableResult open func getParent() -> String! {
        return self.file.getParent()
    }
    

    @discardableResult open func getParentFile() -> JObject! {
        return self.file.getParentFile()
    }
    

    @discardableResult open func getPath() -> String! {
        return self.file.getPath()
    }
    

    @discardableResult open func isAbsolute() -> Bool {
        return self.file.isAbsolute()
    }
    

    @discardableResult open func getAbsolutePath() -> String! {
        return self.file.getAbsolutePath()
    }
    

    @discardableResult open func getAbsoluteFile() -> JObject! {
        return self.file.getAbsoluteFile()
    }
    

    @discardableResult open func getCanonicalPath() -> String! {
        return self.file.getCanonicalPath()
    }
    

    @discardableResult open func getCanonicalFile() -> JObject! {
        return self.file.getCanonicalFile()
    }
    

    @discardableResult open func toURI() -> URI! {
        return self.file.toURI()
    }
    

    @discardableResult open func canRead() -> Bool {
        return self.file.canRead()
    }
    

    @discardableResult open func canWrite() -> Bool {
        return self.file.canWrite()
    }
    

    @discardableResult open func exists() -> Bool {
        return self.file.exists()
    }
    

    @discardableResult open func isDirectory() -> Bool {
        return self.file.isDirectory()
    }
    

    @discardableResult open func isFile() -> Bool {
        return self.file.isFile()
    }
    

    @discardableResult open func isHidden() -> Bool {
        return self.file.isHidden()
    }
    

    @discardableResult open func lastModified() -> Int64 {
        return self.file.lastModified()
    }
    

    @discardableResult open func length() -> Int64 {
        return Int64(truncatingIfNeeded: self.file.length())
    }
    

    @discardableResult open func createNewFile() -> Bool {
        return self.file.createNewFile()
    }
    

    @discardableResult open func delete() -> Bool {
        return self.file.delete()
    }
    

    open func deleteOnExit() {
        self.file.deleteOnExit()
    }
    

    @discardableResult open func list() -> JArray<String?>! {
        return self.file.list()
    }
    

    @discardableResult open func listWithFilter(_ filter: FilenameFilter!) -> JArray<String?>! {
        return self.file.list(filter)
    }
    

    @discardableResult open func listFiles() -> JArray<JObject?>! {
        return jArrayCast(self.file.listFiles(), JObject.self)
    }
    

    @discardableResult open func listFilesFileNameFilter(_ filter: FilenameFilter!) -> JArray<JObject?>! {
        return jArrayCast(self.file.listFiles(filter), JObject.self)
    }
    

    @discardableResult open func listFilesFileFilter(_ filter: FileFilter!) -> JArray<JObject?>! {
        return jArrayCast(self.file.listFiles(filter), JObject.self)
    }
    

    @discardableResult open func mkdir() -> Bool {
        return self.file.mkdir()
    }
    

    @discardableResult open func mkdirs() -> Bool {
        return self.file.mkdirs()
    }
    

    @discardableResult open func renameTo(_ dest: AbFile!) -> Bool {
        return self.file.renameTo(dest.getFile())
    }
    

    @discardableResult open func setLastModified(_ time: Int64) -> Bool {
        return self.file.setLastModified(time)
    }
    

    @discardableResult open func setReadOnly() -> Bool {
        return self.file.setReadOnly()
    }
    

    @discardableResult open func setWritable(_ writable: Bool, _ ownerOnly: Bool) -> Bool {
        return self.file.setExecutable(writable, ownerOnly)
    }
    

    @discardableResult open func setWritable(_ writable: Bool) -> Bool {
        return self.file.setWritable(writable)
    }
    

    @discardableResult open func setReadable(_ readable: Bool, _ ownerOnly: Bool) -> Bool {
        return self.file.setReadable(readable, ownerOnly)
    }
    

    @discardableResult open func setReadable(_ readable: Bool) -> Bool {
        return self.file.setReadable(readable)
    }
    

    @discardableResult open func setExecutable(_ executable: Bool, _ ownerOnly: Bool) -> Bool {
        return self.file.setExecutable(executable, ownerOnly)
    }
    

    @discardableResult open func setExecutable(_ executable: Bool) -> Bool {
        return self.file.setExecutable(executable)
    }
    

    @discardableResult open func canExecute() -> Bool {
        return self.file.canExecute()
    }
    

    @discardableResult open func getTotalSpace() -> Int64 {
        return self.file.getTotalSpace()
    }
    

    @discardableResult open func getFreeSpace() -> Int64 {
        return self.file.getFreeSpace()
    }
    

    @discardableResult open func getUsableSpace() -> Int64 {
        return self.file.getUsableSpace()
    }
    

    @discardableResult open func compareTo(_ pathname: File!) -> Int32 {
        return self.file.compareTo(pathname)
    }
    

    @discardableResult open override func equals(_ obj: JObject!) -> Bool {
        return TsUtil.getInstance().equalsNotstring(self.file, obj)
    }
    

    @discardableResult open override func hashCode() -> Int32 {
        return self.file.hashCode()
    }
    

    @discardableResult open override func toString() -> String! {
        return self.file.toString()
    }
}

