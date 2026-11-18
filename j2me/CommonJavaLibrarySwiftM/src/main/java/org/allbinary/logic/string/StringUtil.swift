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
// package org.allbinary.logic.string

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class StringUtil: JObject {
    fileprivate static let instance: StringUtil! = StringUtil()
    public var INIT_STRING: String! = nil
    public var NULL_STRING: String! = nil
    public var EMPTY_STRING: String! = nil
    public var ONE_EMPTY_STRING_ARRAY: JArray<String?>! = nil
    public var ONE_EMPTY_STRING_ARRAY_OF_ARRAYS: JArray<JArray<String?>?>! = nil
    fileprivate var stringArray: JArray<String?>! = nil

    private func initFields() {
    self.INIT_STRING = ""
    self.NULL_STRING = "null"
    self.EMPTY_STRING = ""
    self.ONE_EMPTY_STRING_ARRAY = JArray<String?>([self.EMPTY_STRING])
    self.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = JArray<JArray<String?>?>(0, factory: { JArray<String?>(0, nil) })
    self.stringArray = JArray<String?>(0, nil)
    }
    

    @discardableResult open class func getInstance() -> StringUtil! {
        return StringUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getNonNull(_ string: String!) -> String! {
        return string
    }
    

    @discardableResult open func getArrayInstance() -> JArray<String?>! {
        return self.stringArray
    }
    

    @discardableResult open func count(_ string: String!, _ aChar: UInt16) -> Int32 {
        var count: Int32 = 0
        let size: Int32 = JString.length(string)
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            if (JString.charAt(string, index) == aChar) {
                count &+= 1
            }
            }
        }
        return count
    }
    

    @discardableResult open func toString(_ anyType: JObject!) -> String! {
        if (anyType != nil) {
            return anyType.toString()
        } else {
            return self.NULL_STRING
        }
    }
}

