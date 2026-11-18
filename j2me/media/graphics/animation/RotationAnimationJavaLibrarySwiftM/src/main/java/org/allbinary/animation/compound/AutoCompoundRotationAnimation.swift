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
// package org.allbinary.animation.compound

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.direction.Direction
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

open class AutoCompoundRotationAnimation: RotationAnimation, CompoundAnimationInterface {
    fileprivate var animationInterfaceArray: JArray<RotationAnimation?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ animationInterfaceArray: JArray<RotationAnimation?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        self.initFields()
        self.animationInterfaceArray = animationInterfaceArray
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.animationInterfaceArray.length)
    }
    

    open override func setFrame(_ index: Int32) {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.setFrame(index)
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.getFrame()
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.getAnimationSize()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.getSize()
    }
    

    open override func previousFrame() {
        self.circularIndexUtil.previous()
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.previousFrame()
    }
    

    open override func nextFrame() {
        self.circularIndexUtil.next()
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.nextFrame()
    }
    

    open override func previousRotation() {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.previousRotation()
    }
    

    open override func nextRotation() {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.nextRotation()
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.paintXY(graphics, x, y)
    }
    

    open override func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.paintThreedXYZ(graphics, x, y, z)
    }
    

    @discardableResult open func getCurrentAnimation() -> IndexedAnimation! {
        return self.animationInterfaceArray[self.circularIndexUtil.getIndex()]
    }
    

    open func nextAnimation() {
        let frame: Int32 = self.getFrame()
        self.circularIndexUtil.next()
        self.setFrame(frame)
    }
    

    open func previousAnimation() {
        let frame: Int32 = self.getFrame()
        self.circularIndexUtil.previous()
        self.setFrame(frame)
    }
    

    open func setAnimation(_ index: Int32) {
        let frame: Int32 = self.getFrame()
        self.circularIndexUtil.setIndex(index)
        self.setFrame(frame)
    }
    

    open override func setFrameByDirection(_ direction: Direction!) {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.setFrameByDirection(direction)
    }
    

    open override func setFrameToAngle(_ angle: Angle!) {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.setFrameToAngle(angle)
    }
    

    open override func adjustFrameToAngle(_ newAngle: Angle!) {
        self.adjustFrame(newAngle.getValue())
    }
    

    open override func adjustFrame(_ angle: Int16) {
        self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.adjustFrame(angle)
    }
    

    @discardableResult open override func getAngleInfoP() -> AngleInfo! {
        return self.animationInterfaceArray[self.circularIndexUtil.getIndex()]!.getAngleInfoP()
    }
    

    @discardableResult open func getAnimationInterfaceArray() -> JArray<RotationAnimation?>! {
        return self.animationInterfaceArray
    }
    

    open func setAnimationInterfaceArray(_ animationInterfaceArray: JArray<RotationAnimation?>!) {
        self.animationInterfaceArray = animationInterfaceArray
    }
    

    open override func set(_ gl: GL!) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.set(gl)
            }
        }
    }
}

