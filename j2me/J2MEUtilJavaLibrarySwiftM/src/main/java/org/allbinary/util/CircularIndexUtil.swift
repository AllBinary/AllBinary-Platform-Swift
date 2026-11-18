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
// package org.allbinary.util

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class CircularIndexUtil: JObject {
    public static let NULL_CIRCULAR_INDEX_UTIL: CircularIndexUtil! = CircularIndexUtil(0, 0)
    fileprivate var index: Int32 = 0
    fileprivate var lastIndex: Int32 = 0
    fileprivate var size: Int32 = 0

    private func initFields() {
    self.index = 0
    self.lastIndex = 0
    self.size = 0
    }
    

    public init(_ index: Int32, _ size: Int32) {
        super.init()
        self.initFields()
        self.setSize(size)
        self.setIndex(index)
    }
    

    @discardableResult open func next() -> Int32 {
        if (self.index >= self.lastIndex) {
            self.index = 0
        } else {
            self.index &+= 1
        }
        return self.index
    }
    

    @discardableResult open func previous() -> Int32 {
        if (self.index < 1) {
            self.index = self.lastIndex
        } else {
            self.index &-= 1
        }
        return self.index
    }
    

    open func setIndex(_ index: Int32) {
        if (index > self.lastIndex) {
            return
        }
        self.index = index
    }
    

    @discardableResult open func getIndex() -> Int32 {
        return self.index
    }
    

    @discardableResult open class func createInstance(_ max: Int32) -> CircularIndexUtil! {
        return CircularIndexUtil(0, max)
    }
    

    @discardableResult open class func createInstanceAt(_ index: Int32, _ max: Int32) -> CircularIndexUtil! {
        return CircularIndexUtil(index, max)
    }
    

    open func setSize(_ size: Int32) {
        self.size = size
        self.lastIndex = size &- 1
        self.index = 0
    }
    

    @discardableResult open func getSize() -> Int32 {
        return self.size
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(CommonLabels.getInstance().INDEX_LABEL).appendint(self.index).append("lastIndex: ").appendint(self.lastIndex).append("size: ").appendint(self.size).toString()
    }
}

