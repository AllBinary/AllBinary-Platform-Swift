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
// package org.allbinary.game.graphics.hud

import J2SEForSwiftLibrary

open class BasicHudFactory: JObject {
    fileprivate static let instance: BasicHudFactory! = BasicHudFactory()
    public var DIRECTION_EXCEPTION: String! = nil
    public var VERTICAL: Int32 = 0
    public var HORIZONTAL: Int32 = 0
    public var BOTTOMLEFT: Int32 = 0
    public var BOTTOMRIGHT: Int32 = 0
    public var TOPLEFT: Int32 = 0
    public var TOPRIGHT: Int32 = 0
    public var BOTTOMCENTER: Int32 = 0
    public var TOPCENTER: Int32 = 0
    public var ABSOLUTE: Int32 = 0

    private func initFields() {
    self.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently"
    self.VERTICAL = 0
    self.HORIZONTAL = 1
    self.BOTTOMLEFT = 0
    self.BOTTOMRIGHT = 1
    self.TOPLEFT = 2
    self.TOPRIGHT = 3
    self.BOTTOMCENTER = 4
    self.TOPCENTER = 5
    self.ABSOLUTE = 6
    }
    

    @discardableResult open class func getInstance() -> BasicHudFactory! {
        return BasicHudFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

