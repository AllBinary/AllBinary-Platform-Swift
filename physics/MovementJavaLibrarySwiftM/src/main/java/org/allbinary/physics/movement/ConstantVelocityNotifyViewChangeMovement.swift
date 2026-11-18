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
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.vector.AxisMathVectorUtil
// import org.allbinary.math.AngleFactory

open class ConstantVelocityNotifyViewChangeMovement: Movement {
    public var basicVelocityProperties: BasicVelocityProperties! = nil
    fileprivate var speedBasicDecimal: BasicDecimal! = nil
    fileprivate var axisMathVectorUtil: AxisMathVectorUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL
        self.basicVelocityProperties = BasicVelocityProperties()
    }
    

    open override func `init`(_ speedBasicDecimal: BasicDecimal!, _ angle: Int32, _ otherAngle: Int32) {
        self.speedBasicDecimal = speedBasicDecimal
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        self.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle))
    }
    

    open func moveOutsideRadius(_ layer: AllBinaryLayer!, _ radius: Int64, _ angle: Int32, _ otherAngle: Int32) {
        let scaleFactorValue: Int32 = self.speedBasicDecimal.getScaledFactorValue()
        let xVector: Int32 = Int32(truncatingIfNeeded: (self.axisMathVectorUtil.calculateX(radius, angle) / Int64(truncatingIfNeeded: scaleFactorValue)))
        let yVector: Int32 = Int32(truncatingIfNeeded: (self.axisMathVectorUtil.calculateY(radius, angle) / Int64(truncatingIfNeeded: scaleFactorValue)))
        let zVector: Int32 = Int32(truncatingIfNeeded: (self.axisMathVectorUtil.calculateZ(radius, otherAngle) / Int64(truncatingIfNeeded: scaleFactorValue)))
        layer.moveDXYZ(xVector, yVector, zVector)
    }
    

    open override func process(_ layer: AllBinaryGameLayer!) {
        let x: Int32 = self.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled()
        let y: Int32 = self.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled()
        let z: Int32 = self.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled()
        layer.moveDXYZ(x, y, z)
        if (x != 0 || y != 0 || z != 0) {
            layer.onViewPositionChangeEvent()
        }
    }
    

    open override func stop() {
        self.basicVelocityProperties.zero()
    }
}

