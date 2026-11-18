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
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.direction.Direction
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

open class SimultaneousCompoundRotationAnimation: RotationAnimation {
    fileprivate var animationInterfaceArray: JArray<RotationAnimation?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ animationInterfaceArray: JArray<RotationAnimation?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
        self.initFields()
        self.animationInterfaceArray = animationInterfaceArray
    }
    

    open override func setFrame(_ frameIndex: Int32) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.setFrame(frameIndex)
            }
        }
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.animationInterfaceArray[0]!.getFrame()
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.animationInterfaceArray[0]!.getAnimationSize()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.animationInterfaceArray[0]!.getSize()
    }
    

    open override func previousFrame() {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.previousFrame()
            }
        }
    }
    

    open override func nextFrame() {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.nextFrame()
            }
        }
    }
    

    open override func previousRotation() {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.previousRotation()
            }
        }
    }
    

    open override func nextRotation() {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.nextRotation()
            }
        }
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.paintXY(graphics, x, y)
            }
        }
    }
    

    open override func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.paintThreedXYZ(graphics, x, y, z)
            }
        }
    }
    

    open override func setFrameByDirection(_ direction: Direction!) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.setFrameByDirection(direction)
            }
        }
    }
    

    open override func setFrameToAngle(_ angle: Angle!) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.setFrameToAngle(angle)
            }
        }
    }
    

    open override func adjustFrameToAngle(_ newAngle: Angle!) {
        self.adjustFrame(newAngle.getValue())
    }
    

    open override func adjustFrame(_ angle: Int16) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.adjustFrame(angle)
            }
        }
    }
    

    @discardableResult open override func getAngleInfoP() -> AngleInfo! {
        return self.animationInterfaceArray[0]!.getAngleInfoP()
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

