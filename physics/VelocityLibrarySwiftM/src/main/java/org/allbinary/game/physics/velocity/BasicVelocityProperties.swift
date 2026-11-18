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
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.vector.AxisMathVectorUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.Angle
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps

open class BasicVelocityProperties: JObject, BasicVelocityInterface {
    public var logUtil: LogUtil! = nil
    public var velocityXBasicDecimal: BasicDecimal! = nil
    public var velocityYBasicDecimal: BasicDecimal! = nil
    public var velocityZBasicDecimal: BasicDecimal! = nil
    fileprivate var axisMathVectorUtil: AxisMathVectorUtil! = nil
    public var directionUtil: DirectionUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    
    self.axisMathVectorUtil = AxisMathVectorUtil.getInstance()
    self.directionUtil = DirectionUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.velocityXBasicDecimal = BasicDecimal(0)
        self.velocityYBasicDecimal = BasicDecimal(0)
        self.velocityZBasicDecimal = BasicDecimal(0)
    }
    

    open func zero() {
        self.velocityXBasicDecimal.setint(0)
        self.velocityYBasicDecimal.setint(0)
        self.velocityZBasicDecimal.setint(0)
    }
    

    @discardableResult open func getVelocityXBasicDecimalP() -> BasicDecimal! {
        return self.velocityXBasicDecimal
    }
    

    @discardableResult open func getVelocityYBasicDecimalP() -> BasicDecimal! {
        return self.velocityYBasicDecimal
    }
    

    @discardableResult open func getVelocityZBasicDecimalP() -> BasicDecimal! {
        return self.velocityZBasicDecimal
    }
    

    open func setVelocityWithBigDecimalAndDirection(_ magnitudeBasicDecimal: BasicDecimal!, _ direction: Direction!, _ otherDirection: Direction!) {
        let angle: Angle! = self.directionUtil.getAngle(direction)
        let otherAngle: Angle! = self.directionUtil.getAngle(otherDirection)
        self.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    }
    

    open func setVelocityWithDirection(_ magnitude: Int64, _ direction: Direction!, _ otherDirection: Direction!) {
        let angle: Angle! = self.directionUtil.getAngle(direction)
        let otherAngle: Angle! = self.directionUtil.getAngle(otherDirection)
        self.setVelocity(magnitude, angle, otherAngle)
    }
    

    open func addVelocityWithBigDecimalAndDirection(_ magnitudeBasicDecimal: BasicDecimal!, _ direction: Direction!, _ otherDirection: Direction!) {
        let angle: Angle! = self.directionUtil.getAngle(direction)
        let otherAngle: Angle! = self.directionUtil.getAngle(otherDirection)
        self.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
    }
    

    open func addVelocityWithDirection(_ magnitude: Int64, _ direction: Direction!, _ otherDirection: Direction!) {
        let angle: Angle! = self.directionUtil.getAngle(direction)
        let otherAngle: Angle! = self.directionUtil.getAngle(otherDirection)
        self.addVelocity(magnitude, angle, otherAngle)
    }
    

    open func setVelocityWithBigDecimal(_ magnitudeBasicDecimal: BasicDecimal!, _ angle: Angle!, _ otherAngle: Angle!) {
        let magnitude: Int64 = magnitudeBasicDecimal.getUnscaled()
        self.setVelocity(magnitude, angle, otherAngle)
    }
    

    open func addVelocityWithBigDecimal(_ magnitudeBasicDecimal: BasicDecimal!, _ angle: Angle!, _ otherAngle: Angle!) {
        let magnitude: Int64 = magnitudeBasicDecimal.getUnscaled()
        self.addVelocity(magnitude, angle, otherAngle)
    }
    

    open func setVelocity(_ magnitude: Int64, _ angle: Angle!, _ otherAngle: Angle!) {
        self.setVelocityi(magnitude, Int32(truncatingIfNeeded: angle.getValue()), Int32(truncatingIfNeeded: otherAngle.getValue()))
    }
    

    open func addVelocity(_ magnitude: Int64, _ angle: Angle!, _ otherAngle: Angle!) {
        self.addVelocityi(magnitude, Int32(truncatingIfNeeded: angle.getValue()), Int32(truncatingIfNeeded: otherAngle.getValue()))
    }
    

    open func setVelocityi(_ magnitude: Int64, _ angle: Int32, _ otherAngle: Int32) {
        let xVector: Int64 = (self.axisMathVectorUtil.calculateX(magnitude, angle) / Int64(truncatingIfNeeded: self.velocityXBasicDecimal.getScaledFactorValue()))
        let yVector: Int64 = (self.axisMathVectorUtil.calculateY(magnitude, angle) / Int64(truncatingIfNeeded: self.velocityYBasicDecimal.getScaledFactorValue()))
        let zVector: Int64 = (self.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / Int64(truncatingIfNeeded: self.velocityZBasicDecimal.getScaledFactorValue()))
        self.velocityXBasicDecimal.setlong(xVector)
        self.velocityYBasicDecimal.setlong(yVector)
        self.velocityZBasicDecimal.setlong(zVector)
    }
    

    open func addVelocityi(_ magnitude: Int64, _ angle: Int32, _ otherAngle: Int32) {
        let xVector: Int64 = (self.axisMathVectorUtil.calculateX(magnitude, angle) / Int64(truncatingIfNeeded: self.velocityXBasicDecimal.getScaledFactorValue()))
        let yVector: Int64 = (self.axisMathVectorUtil.calculateY(magnitude, angle) / Int64(truncatingIfNeeded: self.velocityYBasicDecimal.getScaledFactorValue()))
        let zVector: Int64 = (self.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / Int64(truncatingIfNeeded: self.velocityZBasicDecimal.getScaledFactorValue()))
        self.velocityXBasicDecimal.addlong(xVector)
        self.velocityYBasicDecimal.addlong(yVector)
        self.velocityZBasicDecimal.addlong(zVector)
    }
    

    @discardableResult open override func toString() -> String! {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let positionStrings: PositionStrings! = PositionStrings.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        stringBuffer.append("Velocity ")
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(stringUtil.toString(self.velocityXBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(stringUtil.toString(self.velocityYBasicDecimal))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(stringUtil.toString(self.velocityZBasicDecimal))
        return stringBuffer.toString()
    }
}

