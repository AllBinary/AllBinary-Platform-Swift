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
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.vector.AxisMathVectorUtil
// import org.allbinary.math.AngleFactory

open class BasicConstantVelocityMovement: Movement, VelocityInterfaceCompositeInterface {
    fileprivate var velocityProperties: BasicVelocityProperties! = nil
    fileprivate var speedBasicDecimal: BasicDecimal! = nil
    fileprivate var axisMathVectorUtil: AxisMathVectorUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    self.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
    self.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    }
    

    public init(_ basicDecimal: BasicDecimal!, _ velocityProperties: BasicVelocityProperties!) {
        super.init()
        self.initFields()
        self.setSpeedBasicDecimal(basicDecimal)
        self.velocityProperties = velocityProperties
    }
    

    open override func `init`(_ speedBasicDecimal: BasicDecimal!, _ angle: Int32, _ otherAngle: Int32) {
        self.speedBasicDecimal = speedBasicDecimal
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        self.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    }
    

    open func moveOutsideRadius(_ layer: AllBinaryLayer!, _ radius: Int64, _ angle: Int32, _ otherAngle: Int32) {
        let scaleFactorValue: Int32 = self.speedBasicDecimal.getScaledFactorValue()
        let xVector: Int32 = Int32(truncatingIfNeeded: (self.axisMathVectorUtil.calculateX(radius, angle) / Int64(truncatingIfNeeded: scaleFactorValue)))
        let yVector: Int32 = Int32(truncatingIfNeeded: (self.axisMathVectorUtil.calculateY(radius, angle) / Int64(truncatingIfNeeded: scaleFactorValue)))
        let zVector: Int32 = Int32(truncatingIfNeeded: (self.axisMathVectorUtil.calculateZ(radius, otherAngle) / Int64(truncatingIfNeeded: scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, zVector)
    }
    

    open override func process(_ layer: AllBinaryGameLayer!) {
        layer.moveDXYZ(self.velocityProperties.getVelocityXBasicDecimalP().getScaled(), self.velocityProperties.getVelocityYBasicDecimalP().getScaled(), self.velocityProperties.getVelocityZBasicDecimalP().getScaled())
    }
    

    @discardableResult open override func toString() -> String! {
        return self.velocityProperties.toString()
    }
    

    open override func stop() {
        self.velocityProperties.zero()
    }
    

    @discardableResult open func getVelocityProperties() -> BasicVelocityProperties! {
        return self.velocityProperties
    }
    

    open func setVelocityProperties(_ velocityProperties: BasicVelocityProperties!) {
        self.velocityProperties = velocityProperties
    }
    

    open func setSpeedBasicDecimal(_ speedBasicDecimal: BasicDecimal!) {
        self.speedBasicDecimal = speedBasicDecimal
    }
    

    @discardableResult open func getSpeedBasicDecimal() -> BasicDecimal! {
        return self.speedBasicDecimal
    }
}

