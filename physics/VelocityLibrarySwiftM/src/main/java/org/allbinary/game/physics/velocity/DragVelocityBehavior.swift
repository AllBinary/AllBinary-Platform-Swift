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
// package org.allbinary.game.physics.velocity

import J2SEForSwiftLibrary
// import org.allbinary.logic.math.BasicDecimal

open class DragVelocityBehavior: VelocityBehaviorBase {
    public static let instance: DragVelocityBehavior! = DragVelocityBehavior()

    public override init() {
        super.init()
    }
    

    open override func reduce(_ velocityProperties: BasicVelocityProperties!, _ nominator: Int32, _ denominator: Int32) {
        if (velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != 0) {
            let basicDecimal: BasicDecimal! = velocityProperties.getVelocityXBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0) {
            let basicDecimal: BasicDecimal! = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
    }
    

    open override func reduceX(_ velocityProperties: BasicVelocityProperties!, _ nominator: Int32, _ denominator: Int32) {
        let basicDecimal: BasicDecimal! = velocityProperties.getVelocityXBasicDecimalP()
        if (basicDecimal.getUnscaled() != 0) {
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
    }
    

    open override func reduceY(_ velocityProperties: BasicVelocityProperties!, _ nominator: Int32, _ denominator: Int32) {
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0) {
            let basicDecimal: BasicDecimal! = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        }
    }
}

