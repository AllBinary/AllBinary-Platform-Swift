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
// package org.allbinary.physics.movement

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.game.physics.acceleration.GravityUtil
// import org.allbinary.game.physics.velocity.VelocityProperties
// import org.allbinary.logic.math.BasicDecimal

open class CustomGravityConstantVelocityMovement: BasicConstantVelocityMovement {
    fileprivate var customGravity: Int32 = 0
    fileprivate var gravityUtil: GravityUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    self.gravityUtil = GravityUtil.getInstance()
    }
    

    public init(_ speedBasicDecimal: BasicDecimal!, _ customGravity: Int32) {
        super.init(speedBasicDecimal, VelocityProperties(Int32(truncatingIfNeeded: speedBasicDecimal.getUnscaled()), Int32(truncatingIfNeeded: speedBasicDecimal.getUnscaled())))
        self.initFields()
        self.customGravity = customGravity
    }
    

    open override func process(_ layer: AllBinaryGameLayer!) {
        super.process(layer)
        self.gravityUtil.process(self.getVelocityProperties(), self.customGravity)
        let velocityProperties: VelocityProperties! = (self.getVelocityProperties() as! VelocityProperties)
        velocityProperties.limitMaxYForwardVelocity()
    }
}

