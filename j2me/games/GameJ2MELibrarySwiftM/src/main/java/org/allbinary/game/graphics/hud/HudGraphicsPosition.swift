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
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory

open class HudGraphicsPosition: JObject {
    public static let NULL_HUD_GRAPHICS_POSITION: HudGraphicsPosition! = HudGraphicsPosition(PointFactory.getInstance().ZERO_ZERO, 9)
    fileprivate var anchor: Int32 = 0
    fileprivate var point: GPoint! = nil

    private func initFields() {
    self.anchor = 0
    self.point = PointFactory.getInstance().ZERO_ZERO
    }
    

    public init(_ point: GPoint!, _ anchor: Int32) {
        super.init()
        self.initFields()
        self.setAnchor(anchor)
        self.setPoint(point)
    }
    

    @discardableResult open func getAnchor() -> Int32 {
        return self.anchor
    }
    

    fileprivate func setAnchor(_ anchor: Int32) {
        self.anchor = anchor
    }
    

    @discardableResult open func getPoint() -> GPoint! {
        return self.point
    }
    

    open func setPoint(_ point: GPoint!) {
        self.point = point
    }
}

