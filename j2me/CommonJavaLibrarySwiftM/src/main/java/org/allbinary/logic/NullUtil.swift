/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType

//ActualPlatform
open class NullUtil: JObject {
    fileprivate static let instance: NullUtil! = NullUtil()
    public var NULL_OBJECT: JObject! = nil
    public var NULL_CLASS: String! = nil
    public var NULL_OBJECT_ARRAY: JArray<JObject?>! = nil
    public var NULL_CHAR_ARRAY: JArray<UInt16>! = nil
    public var NULL_BYTE_ARRAY: JArray<Int8>! = nil
    public var NULL_SHORT_ARRAY_ARRAY: JArray<JArray<Int16>?>! = nil
    public var NULL_INT_ARRAY: JArray<Int32>! = nil
    public var NULL_INT_ARRAY_ARRAY: JArray<JArray<Int32>?>! = nil
    public var NULL_INT_ARRAY_ARRAY_ARRAY: JArray<JArray<JArray<Int32>?>?>! = nil
    public var NULL_FLOAT_ARRAY: JArray<Float>! = nil

    private func initFields() {
    self.NULL_OBJECT = JObject()
    self.NULL_CLASS = JObject.className(self.NULL_OBJECT)
    self.NULL_OBJECT_ARRAY = JArray<JObject?>(0, nil)
    self.NULL_CHAR_ARRAY = JArray<UInt16>(0, 0)
    self.NULL_BYTE_ARRAY = JArray<Int8>(0, 0)
    self.NULL_SHORT_ARRAY_ARRAY = JArray<JArray<Int16>?>(0, factory: { JArray<Int16>(0, 0) })
    self.NULL_INT_ARRAY = JArray<Int32>(0, 0)
    self.NULL_INT_ARRAY_ARRAY = JArray<JArray<Int32>?>(0, factory: { JArray<Int32>(0, 0) })
    self.NULL_INT_ARRAY_ARRAY_ARRAY = JArray<JArray<JArray<Int32>?>?>(0, factory: { JArray<JArray<Int32>?>(0, factory: { JArray<Int32>(0, 0) }) })
    self.NULL_FLOAT_ARRAY = JArray<Float>(0, 0.0)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> NullUtil! {
        return NullUtil.instance
    }
}

