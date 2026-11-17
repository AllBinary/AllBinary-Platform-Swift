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
// package org.allbinary.graphics

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class PointFactory: JObject {
    fileprivate static let instance: PointFactory! = PointFactory()
    public var ZERO_ZERO: GPoint! = nil

    private func initFields() {
    self.ZERO_ZERO = self.createXYZ(0, 0, 0)
    }
    

    @discardableResult public static func getInstance() -> PointFactory! {
        return PointFactory.instance
    }
    

    open func `init`() {
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func createXY(_ x: Int32, _ y: Int32) -> GPoint! {
        return GPoint(x, y, 0)
    }
    

    @discardableResult open func createXYZ(_ x: Int32, _ y: Int32, _ z: Int32) -> GPoint! {
        return GPoint(x, y, z)
    }
}

