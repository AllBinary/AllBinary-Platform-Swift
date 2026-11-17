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
// package org.allbinary.math

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class PositionStrings: JObject {
    fileprivate static let instance: PositionStrings! = PositionStrings()
    public var X: String! = nil
    public var Y: String! = nil
    public var X_LABEL: String! = nil
    public var Y_LABEL: String! = nil
    public var Z_LABEL: String! = nil
    public var DX_LABEL: String! = nil
    public var DY_LABEL: String! = nil
    public var DZ_LABEL: String! = nil

    private func initFields() {
    self.X = "x"
    self.Y = "y"
    self.X_LABEL = "x: "
    self.Y_LABEL = "y: "
    self.Z_LABEL = "z: "
    self.DX_LABEL = "dx: "
    self.DY_LABEL = "dy: "
    self.DZ_LABEL = "dz: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> PositionStrings! {
        return PositionStrings.instance
    }
}

