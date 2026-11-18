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
// package org.allbinary.game.ag.life

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.health.Health
// import org.allbinary.game.health.HealthBarAnimation
// import org.allbinary.game.health.HealthBarTwodAnimation
// import org.allbinary.game.health.HealthInterface
// import org.allbinary.game.health.HealthListenerInterface
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.layer.AllBinaryLayer

open class HealthIncludingLifeBar: Paintable, HealthListenerInterface {
    fileprivate var animationInterface: HealthBarAnimation! = nil
    fileprivate var life: Life! = nil
    fileprivate var healthInterface: HealthInterface! = nil
    public var allbinaryLayer: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    }
    

    @discardableResult open class func createHealthIncludingLifeBar(_ layerInterface: AllBinaryLayer!, _ life: Life!, _ healthInterface: Health!, _ location: Int32, _ direction: Int32) -> HealthIncludingLifeBar! {
        return HealthIncludingLifeBar(layerInterface, life, healthInterface, HealthBarTwodAnimation(layerInterface, location), direction)
    }
    

    public init(_ layerInterface: AllBinaryLayer!, _ life: Life!, _ healthInterface: Health!, _ animationInterface: HealthBarAnimation!, _ direction: Int32) {
        super.init()
        self.initFields()
        self.allbinaryLayer = layerInterface
        self.animationInterface = animationInterface
        self.life = life
        self.healthInterface = healthInterface
        self.healthInterface.addListener(self)
        self.onHealthChange()
    }
    

    open func onHealthChange() {
        self.animationInterface.onHealthChange(((self.healthInterface.getHealth() &+ (self.healthInterface.getMaxHealth() &* Int32(Int32(truncatingIfNeeded: self.life.get())))) &* self.allbinaryLayer.getWidth()) / (self.healthInterface.getMaxHealth() &+ (self.healthInterface.getMaxHealth() &* Int32(Int32(truncatingIfNeeded: self.life.getStartLives())))))
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.animationInterface.paintXY(graphics, 0, 0)
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        self.animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
}

