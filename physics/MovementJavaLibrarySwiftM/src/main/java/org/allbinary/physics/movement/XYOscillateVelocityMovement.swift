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
// import org.allbinary.game.physics.velocity.VelocityProperties
// import org.allbinary.logic.math.BasicDecimal

open class XYOscillateVelocityMovement: BasicConstantVelocityMovement {
    fileprivate var oscillateMin: Int32 = 0
    fileprivate var oscillateMax: Int32 = 0
    fileprivate var oscillate: Int32 = 0
    fileprivate var oscillatePositive: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.oscillate = 0
    self.oscillatePositive = false
    }
    

    public init(_ speedBasicDecimal: BasicDecimal!, _ oscillateMin: Int32, _ oscillateMax: Int32) {
        super.init(speedBasicDecimal, VelocityProperties(Int32(truncatingIfNeeded: speedBasicDecimal.getUnscaled()), Int32(truncatingIfNeeded: speedBasicDecimal.getUnscaled())))
        self.initFields()
        self.oscillateMin = oscillateMin
        self.oscillateMax = oscillateMax
    }
    

    open override func process(_ layer: AllBinaryGameLayer!) {
        super.process(layer)
        if (self.oscillate < self.oscillateMin) {
            self.oscillatePositive = true
            self.getVelocityProperties().getVelocityYBasicDecimalP().addint(3000)
        } else if (self.oscillate > self.oscillateMax) {
            self.oscillatePositive = false
            self.getVelocityProperties().getVelocityYBasicDecimalP().subtractint(3000)
        }
        if (self.oscillatePositive) {
            self.oscillate &+= 1
            self.getVelocityProperties().getVelocityXBasicDecimalP().addint(5000)
        } else {
            self.oscillate &-= 1
            self.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(5000)
        }
    }
}

