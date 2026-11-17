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
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.NullUtil
// import org.allbinary.util.CircularIndexUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class BaseCircularPool: JObject {
    public var circularIndexUtil: CircularIndexUtil! = nil
    public var OBJECT_ARRAY: JArray<JObject?>! = nil

    private func initFields() {
    self.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL
    self.OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getNextInstance() -> JObject! {
        let anyType: JObject! = self.OBJECT_ARRAY[self.circularIndexUtil.getIndex()]
        self.circularIndexUtil.next()
        return anyType
    }
    

    open func `init`(_ allBinaryObjectFactoryInterface: AllBinaryObjectFactoryInterface!) {
        self.circularIndexUtil.setIndex(0)
        let size: Int32 = self.circularIndexUtil.getSize()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance()
            }
        }
    }
    

    @discardableResult open func getInstance(_ index: Int32) -> JObject! {
        return self.OBJECT_ARRAY[index]
    }
}

