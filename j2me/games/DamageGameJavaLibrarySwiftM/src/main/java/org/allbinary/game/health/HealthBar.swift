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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.layer.AllBinaryLayer

open class HealthBar: Paintable, HealthListenerInterface {
    fileprivate var animationInterface: HealthBarAnimation! = nil
    fileprivate var healthInterface: HealthInterface! = nil
    public var allbinaryLayer: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    }
    

    public init(_ layerInterface: AllBinaryLayer!, _ healthInterface: Health!, _ animationInterface: HealthBarAnimation!, _ direction: Int32) {
        super.init()
        self.initFields()
        self.allbinaryLayer = layerInterface
        self.animationInterface = animationInterface
        self.healthInterface = healthInterface
        self.healthInterface.addListener(self)
        self.onHealthChange()
    }
    

    open func onHealthChange() {
        self.animationInterface.onHealthChange(self.healthInterface.getHealth() &* self.allbinaryLayer.getWidth() / self.healthInterface.getMaxHealth())
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.animationInterface.paintXY(graphics, 0, 0)
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        self.animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
}

