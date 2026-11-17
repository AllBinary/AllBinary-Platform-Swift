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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.util.CircularIndexUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class BasicColorArrayIndexer: JObject {
    fileprivate var basicColorArray: JArray<BasicColor?>! = nil
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil

    private func initFields() {
    
    
    }
    

    public init(_ basicColorArray: JArray<BasicColor?>!) {
        super.init()
        self.initFields()
        self.basicColorArray = basicColorArray
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.basicColorArray.length)
    }
    

    open func next() {
        self.circularIndexUtil.next()
    }
    

    @discardableResult open func get() -> BasicColor! {
        return self.basicColorArray[self.circularIndexUtil.getIndex()]
    }
    

    @discardableResult open func getBasicColorArray() -> JArray<BasicColor?>! {
        return self.basicColorArray
    }
}

