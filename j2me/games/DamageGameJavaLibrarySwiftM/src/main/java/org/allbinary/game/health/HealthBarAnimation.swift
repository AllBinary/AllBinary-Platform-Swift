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
// package org.allbinary.game.health

import J2SEForSwiftLibrary
// import org.allbinary.animation.Animation
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.layer.AllBinaryLayer

open class HealthBarAnimation: Animation {
    fileprivate var basicColorFactory: BasicColorFactory! = nil
    public var x2: Int32 = 0
    public var thickness: Int32 = 0
    fileprivate var location: Int32 = 0
    public var allbinaryLayer: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicColorFactory = BasicColorFactory.getInstance()
    self.x2 = 0
    self.thickness = 0
    
    
    }
    

    public init(_ layerInterface: AllBinaryLayer!, _ location: Int32) {
        super.init()
        self.initFields()
        self.allbinaryLayer = layerInterface
        self.location = location
        let basicHudFactory: BasicHudFactory! = BasicHudFactory.getInstance()
        if (self.location != basicHudFactory.TOPLEFT && self.location != basicHudFactory.BOTTOMLEFT) {
            jThrow(JException("Exception", "Location Not Valid"))
        }
        if (layerInterface.getWidth() > 40) {
            self.thickness = 3
        } else if (layerInterface.getWidth() > 20) {
            self.thickness = 2
        } else {
            self.thickness = 1
        }
    }
    

    open func onHealthChange(_ newX2: Int32) {
        self.x2 = newX2
        let quarter: Int32 = (self.allbinaryLayer.getWidth() >> 2)
        if (self.x2 > quarter &* 3) {
            self.basicColor = self.basicColorFactory.GREEN
            self.colorP = self.basicColor.intValue()
        } else if (self.x2 > quarter &* 2) {
            self.basicColor = self.basicColorFactory.YELLOW
            self.colorP = self.basicColor.intValue()
        } else if (self.x2 > quarter) {
            self.basicColor = self.basicColorFactory.ORANGE
            self.colorP = self.basicColor.intValue()
        } else {
            self.basicColor = self.basicColorFactory.RED
            self.colorP = self.basicColor.intValue()
        }
    }
    

    @discardableResult open func getY() -> Int32 {
        let basicHudFactory: BasicHudFactory! = BasicHudFactory.getInstance()
        if (self.location == basicHudFactory.TOPLEFT) {
            return self.allbinaryLayer.getViewPosition().getY() - 4
        } else if (self.location == basicHudFactory.BOTTOMLEFT) {
            return self.allbinaryLayer.getViewPosition().getY2() &+ 4
        }
        return -1
    }
}

