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
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class DelayedConstantVelocityMovement: BasicConstantVelocityMovement {
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.timeDelayHelper = TimeDelayHelper(60)
    }
    

    public override init(_ basicDecimal: BasicDecimal!, _ velocityProperties: BasicVelocityProperties!) {
        super.init(basicDecimal, velocityProperties)
        self.initFields()
    }
    

    open override func `init`(_ speedBasicDecimal: BasicDecimal!, _ angle: Int32, _ otherAngle: Int32) {
    }
    

    open override func process(_ layer: AllBinaryGameLayer!) {
        if (self.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.process(layer)
        }
    }
}

