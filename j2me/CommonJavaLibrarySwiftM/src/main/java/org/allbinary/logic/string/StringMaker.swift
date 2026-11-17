// Generated Code Do Not Modify
// package org.allbinary.logic.string

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class StringMaker: JObject {
    fileprivate var charArray: JArray<UInt16>! = nil
    fileprivate var currentLength: Int32 = 0

    private func initFields() {
    
    self.currentLength = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.charArray = JArray<UInt16>(20, 0)
    }
    

    @discardableResult open func append(_ string: String!) -> StringMaker! {
        let stringLength: Int32 = JString.length(string)
        self.ensureCapacity(self.currentLength &+ stringLength)
        JString.getChars(string, 0, stringLength, self.charArray, self.currentLength)
        self.currentLength = self.currentLength &+ stringLength
        return self
    }
    

    @discardableResult open func appendchar(_ c: UInt16) -> StringMaker! {
        self.ensureCapacity(self.currentLength &+ 1)
        self.charArray[jPostIncrement(&self.currentLength)] = c
        return self
    }
    

    @discardableResult open func appendCharArray(_ charArray: JArray<UInt16>!, _ start: Int32, _ end: Int32) -> StringMaker! {
        self.ensureCapacity(self.currentLength &+ (end &- start))
        do {
            var index: Int32 = start
            while (index < end) {
                defer { index &+= 1 }
            self.charArray[jPostIncrement(&self.currentLength)] = charArray[index]
            }
        }
        return self
    }
    

    @discardableResult open func appendbyte(_ b: Int8) -> StringMaker! {
        self.append(jstr(b))
        return self
    }
    

    @discardableResult open func appendshort(_ b: Int16) -> StringMaker! {
        self.append(jstr(b))
        return self
    }
    

    @discardableResult open func appendint(_ i: Int32) -> StringMaker! {
        self.append(jstr(i))
        return self
    }
    

    @discardableResult open func appendlong(_ l: Int64) -> StringMaker! {
        self.append(jstr(l))
        return self
    }
    

    @discardableResult open func appendfloat(_ f: Float) -> StringMaker! {
        self.append(jstr(f))
        return self
    }
    

    @discardableResult open func appendboolean(_ bool: Bool) -> StringMaker! {
        if (bool) {
            self.ensureCapacity(self.currentLength &+ 4)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("t" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("r" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("u" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("e" as Unicode.Scalar).value)
        } else {
            self.ensureCapacity(self.currentLength &+ 5)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("f" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("a" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("l" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("s" as Unicode.Scalar).value)
            self.charArray[jPostIncrement(&self.currentLength)] = UInt16(("e" as Unicode.Scalar).value)
        }
        return self
    }
    

    open func ensureCapacity(_ minSize: Int32) {
        let oldCapacity: Int32 = self.charArray.length
        if (minSize > oldCapacity) {
            var newCapacity: Int32 = oldCapacity &* 3
            if (newCapacity < minSize) {
                newCapacity = minSize
            }
            let copy: JArray<UInt16>! = JArray<UInt16>(newCapacity, 0)
            let min: Int32 = self.min(self.charArray.length, newCapacity)
            JSystem.arraycopy(self.charArray, 0, copy, 0, min)
            self.charArray = copy
        }
    }
    

    @discardableResult open func min(_ value: Int32, _ value2: Int32) -> Int32 {
        return ((value <= value2) ? value : value2)
    }
    

    @discardableResult open func delete(_ start: Int32, _ end: Int32) -> StringMaker! {
        self.currentLength = self.currentLength &- (end &- start)
        return self
    }
    

    @discardableResult open func length() -> Int32 {
        return self.currentLength
    }
    

    @discardableResult open override func toString() -> String! {
        return JString.fromChars(self.charArray, 0, self.currentLength)
    }
}

