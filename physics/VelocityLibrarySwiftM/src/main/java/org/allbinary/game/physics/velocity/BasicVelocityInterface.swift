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
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.math.Angle

public protocol BasicVelocityInterface: AnyObject {
    @discardableResult func getVelocityXBasicDecimalP() -> BasicDecimal!
    @discardableResult func getVelocityYBasicDecimalP() -> BasicDecimal!
    func zero()
    func setVelocityWithBigDecimalAndDirection(_ magnitudeBasicDecimal: BasicDecimal!, _ direction: Direction!, _ otherDirection: Direction!)
    func addVelocityWithBigDecimalAndDirection(_ magnitudeBasicDecimal: BasicDecimal!, _ direction: Direction!, _ otherDirection: Direction!)
    func setVelocityWithDirection(_ magnitude: Int64, _ direction: Direction!, _ otherDirection: Direction!)
    func addVelocityWithDirection(_ magnitude: Int64, _ direction: Direction!, _ otherDirection: Direction!)
    func setVelocityWithBigDecimal(_ magnitudeBasicDecimal: BasicDecimal!, _ angle: Angle!, _ otherAngle: Angle!)
    func addVelocityWithBigDecimal(_ magnitudeBasicDecimal: BasicDecimal!, _ angle: Angle!, _ otherAngle: Angle!)
    func setVelocity(_ magnitude: Int64, _ angle: Angle!, _ otherAngle: Angle!)
    func addVelocity(_ magnitude: Int64, _ angle: Angle!, _ otherAngle: Angle!)
    func addVelocityi(_ magnitude: Int64, _ angle: Int32, _ otherAngle: Int32)
}


