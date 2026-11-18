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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil

open class SimultaneousCompoundIndexedAnimation: IndexedAnimation {
    fileprivate var animationInterfaceArray: JArray<Animation?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ animationInterfaceArray: JArray<Animation?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.animationInterfaceArray = animationInterfaceArray
    }
    

    open override func setFrame(_ frameIndex: Int32) {
        var indexedAnimation: IndexedAnimation! = nil
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            indexedAnimation = (self.animationInterfaceArray[index] as! IndexedAnimation)
            indexedAnimation.setFrame(frameIndex)
            }
        }
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        let indexedAnimation: IndexedAnimation! = (self.animationInterfaceArray[0] as! IndexedAnimation)
        return indexedAnimation.getFrame()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        let indexedAnimation: IndexedAnimation! = (self.animationInterfaceArray[0] as! IndexedAnimation)
        return indexedAnimation.getSize()
    }
    

    open override func previousFrame() {
        var indexedAnimation: IndexedAnimation! = nil
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            indexedAnimation = (self.animationInterfaceArray[index] as! IndexedAnimation)
            indexedAnimation.previousFrame()
            }
        }
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open override func nextFrame() {
        do {
            var index: Int32 = self.animationInterfaceArray.length
            while (jPreDecrement(&index) >= 0) {
            self.animationInterfaceArray[index]!.nextFrame()
            }
        }
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        let size: Int32 = self.animationInterfaceArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.animationInterfaceArray[index]!.paintXY(graphics, x, y)
            }
        }
    }
    

    open override func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
        let size: Int32 = self.animationInterfaceArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.animationInterfaceArray[index]!.paintThreedXYZ(graphics, x, y, z)
            }
        }
    }
    

    @discardableResult open func getAnimationInterfaceArray() -> JArray<Animation?>! {
        return self.animationInterfaceArray
    }
    

    open func setAnimationInterfaceArray(_ animationInterfaceArray: JArray<Animation?>!) {
        self.animationInterfaceArray = animationInterfaceArray
    }
}

