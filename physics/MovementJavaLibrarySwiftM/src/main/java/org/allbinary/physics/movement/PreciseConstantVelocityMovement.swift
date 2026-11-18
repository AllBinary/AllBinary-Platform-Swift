// Generated Code Do Not Modify
// package org.allbinary.physics.movement

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.math.ScaleFactorFactory

open class PreciseConstantVelocityMovement: BasicConstantVelocityMovement {
    fileprivate var accumulatedX: Int32 = 0
    fileprivate var accumulatedY: Int32 = 0
    fileprivate var accumulatedZ: Int32 = 0
    fileprivate var factorValue: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.accumulatedX = 0
    self.accumulatedY = 0
    self.accumulatedZ = 0
    self.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    }
    

    public override init(_ basicDecimal: BasicDecimal!, _ velocityProperties: BasicVelocityProperties!) {
        super.init(basicDecimal, velocityProperties)
        self.initFields()
    }
    

    open override func `init`(_ speedBasicDecimal: BasicDecimal!, _ angle: Int32, _ otherAngle: Int32) {
    }
    

    open override func process(_ layer: AllBinaryGameLayer!) {
        let mathUtil: MathUtil! = MathUtil.getInstance()
        let velocityProperties: BasicVelocityProperties! = self.getVelocityProperties()
        self.accumulatedX = Int32(truncatingIfNeeded: (Int64(truncatingIfNeeded: self.accumulatedX) &+ velocityProperties.getVelocityXBasicDecimalP().getUnscaled()))
        self.accumulatedY = Int32(truncatingIfNeeded: (Int64(truncatingIfNeeded: self.accumulatedY) &+ velocityProperties.getVelocityYBasicDecimalP().getUnscaled()))
        self.accumulatedZ = Int32(truncatingIfNeeded: (Int64(truncatingIfNeeded: self.accumulatedZ) &+ velocityProperties.getVelocityZBasicDecimalP().getUnscaled()))
        layer.moveDXYZ(self.accumulatedX / self.factorValue, self.accumulatedY / self.factorValue, self.accumulatedZ / self.factorValue)
        if (mathUtil.abs(self.accumulatedX) > self.factorValue) {
            self.accumulatedX = 0
        }
        if (mathUtil.abs(self.accumulatedY) > self.factorValue) {
            self.accumulatedY = 0
        }
        if (mathUtil.abs(self.accumulatedZ) > self.factorValue) {
            self.accumulatedZ = 0
        }
    }
}

