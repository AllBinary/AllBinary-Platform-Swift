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
// import org.allbinary.logic.math.PrimitiveIntUtil

open class SimultaneousCompoundIndexAnimation: IndexedAnimation {
    fileprivate var animationInterfaceArray: JArray<IndexedAnimation?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ animationInterfaceArray: JArray<IndexedAnimation?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
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
    

    open override func set(_ gl: GL!) {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.set(gl)
            }
        }
    }
    

    @discardableResult open func getAnimationInterfaceArray() -> JArray<IndexedAnimation?>! {
        return self.animationInterfaceArray
    }
    

    open func setAnimationInterfaceArray(_ animationInterfaceArray: JArray<IndexedAnimation?>!) {
        self.animationInterfaceArray = animationInterfaceArray
    }
}

