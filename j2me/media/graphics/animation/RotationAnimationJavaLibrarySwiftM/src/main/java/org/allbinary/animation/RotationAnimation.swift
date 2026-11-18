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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleInfo
// import org.allbinary.math.FrameUtil
// import org.allbinary.util.CircularIndexUtil

open class RotationAnimation: IndexedAnimation, RotationAnimationInterface {
    public var frameUtil: FrameUtil! = nil
    public var directionUtil: DirectionUtil! = nil
    public var angleInfo: AngleInfo! = nil
    public var circularIndexUtil: CircularIndexUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.frameUtil = FrameUtil.getInstance()
    self.directionUtil = DirectionUtil.getInstance()
    
    
    }
    

    public init(_ angleInfo: AngleInfo!, _ circularIndexUtil: CircularIndexUtil!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.angleInfo = angleInfo
        self.circularIndexUtil = circularIndexUtil
    }
    

    open func nextRotationX() {
    }
    

    open func previousRotationX() {
    }
    

    open func nextRotation() {
        self.angleInfo.adjustAngle(self.circularIndexUtil.next())
    }
    

    open func previousRotation() {
        self.angleInfo.adjustAngle(self.circularIndexUtil.previous())
    }
    

    open func nextRotationZ() {
    }
    

    open func previousRotationZ() {
    }
    

    open override func setFrame(_ index: Int32) {
        self.circularIndexUtil.setIndex(index)
        let newFrame: Int32 = self.circularIndexUtil.getIndex()
        self.angleInfo.adjustAngle(newFrame)
    }
    

    open func setFrameByDirection(_ direction: Direction!) {
        let angle: Angle! = self.directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    }
    

    open func setFrameToAngle(_ angle: Angle!) {
        self.adjustFrameToAngle(angle)
    }
    

    open func adjustFrameToAngle(_ angle: Angle!) {
        self.adjustFrame(angle.getValue())
    }
    

    open func adjustFrame(_ angle: Int16) {
        self.setFrame(self.frameUtil.getFrameForAngle(angle, Int32(truncatingIfNeeded: self.angleInfo.getAngleIncrementInfo().getAngleIncrement())))
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.circularIndexUtil.getIndex()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.circularIndexUtil.getSize()
    }
    

    @discardableResult open func getAngleInfoP() -> AngleInfo! {
        return self.angleInfo
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(super.toString()).append("circularIndexUtil: ").append(self.circularIndexUtil.toString()).append("angleInfo: ").append(self.angleInfo.toString()).toString()
    }
}

