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
// package org.allbinary.animation.special

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.IndexedAnimationBehavior
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.math.PrimitiveIntUtil

open class TitleAnimation: SpecialAnimation {
    public var systemWrapper: ABSystemWrapper! = nil
    public var deltaX: Float = 0.0
    public var deltaY: Float = 0.0
    public var deltaZ: Float = 0.0
    public var basicColorArray: JArray<BasicColor?>! = nil
    public var dxArray: JArray<Int32>! = nil
    public var dyArray: JArray<Int32>! = nil
    public var widthP: Int32 = 0
    public var animationInterfaceArray: JArray<IndexedAnimation?>! = nil
    public var sizeP: Int32 = 0
    public var y: Int32 = 0
    fileprivate var lastFrameStartTime: Int64 = 0
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    public var CLEAR_COLOR: BasicColor! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.systemWrapper = ABSystemWrapper.getInstance()
    self.deltaX = 0.0
    self.deltaY = 0.0
    self.deltaZ = 0.0
    
    
    
    
    
    
    
    
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR
    }
    

    @discardableResult open class func createAnimation(_ animationInterfaceArray: JArray<IndexedAnimation?>!, _ basicColorArray: JArray<BasicColor?>!, _ dxArray: JArray<Int32>!, _ dyArray: JArray<Int32>!, _ y: Int32, _ width: Int32) -> TitleAnimation! {
        return TitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior(1, 250))
    }
    

    public init(_ animationInterfaceArray: JArray<IndexedAnimation?>!, _ basicColorArray: JArray<BasicColor?>!, _ dxArray: JArray<Int32>!, _ dyArray: JArray<Int32>!, _ y: Int32, _ width: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.lastFrameStartTime = self.systemWrapper.currentTimeMillis()
        self.animationInterfaceArray = animationInterfaceArray
        self.sizeP = self.animationInterfaceArray.length
        self.basicColorArray = basicColorArray
        self.dxArray = dxArray
        self.dyArray = dyArray
        self.y = y
        self.widthP = width
        self.reset()
    }
    

    open override func nextFrame() {
        let currentTime: Int64 = self.systemWrapper.currentTimeMillis()
        let totalTimeElapsed: Int64 = currentTime &- self.lastFrameStartTime
        let indexedAnimationBehavior: IndexedAnimationBehavior! = (self.getAnimationBehavior() as! IndexedAnimationBehavior)
        if (totalTimeElapsed > indexedAnimationBehavior.frameDelayTime) {
            self.previousFrame()
            self.lastFrameStartTime = currentTime
        }
        if (self.animationInterfaceArray[0]!.getFrame() == 0) {
            indexedAnimationBehavior.loopIndex &+= 1
        }
    }
    

    @discardableResult open override func isComplete() -> Bool {
        let indexedAnimationBehavior: IndexedAnimationBehavior! = (self.getAnimationBehavior() as! IndexedAnimationBehavior)
        if (indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || self.getFrame() != 0) {
            return false
        } else {
            return true
        }
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.animationInterfaceArray[0]!.getSize()
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.animationInterfaceArray[0]!.getFrame()
    }
    

    open override func setFrame(_ frame: Int32) {
        do {
            var index: Int32 = 0
            while (index < self.sizeP) {
                defer { index &+= 1 }
            self.animationInterfaceArray[index]!.setFrame(frame)
            }
        }
    }
    

    open override func setLastFrame() {
        self.setFrame(self.getSize() &- 1)
    }
    

    open override func reset() {
        self.setLastFrame()
        let indexedAnimationBehavior: IndexedAnimationBehavior! = ((self.getAnimationBehavior() as! IndexedAnimationBehavior))
        indexedAnimationBehavior.reset()
    }
    

    open override func previousFrame() {
        do {
            var index: Int32 = 0
            while (index < self.sizeP) {
                defer { index &+= 1 }
            self.animationInterfaceArray[index]!.previousFrame()
            }
        }
    }
    

    open func paintFrameXY(_ graphics: Graphics!, _ frame: Int32, _ x: Int32, _ y: Int32) {
        self.setFrame(frame)
        self.paintXY(graphics, x, y)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ ax: Int32, _ ay: Int32) {
        var x: Int32 = 0
        if (self.widthP != Integer.MIN_VALUE) {
            x = ((self.displayInfoSingleton.getLastWidth() &- self.widthP) / 2)
        }
        var deltaX: Int32 = 0
        var deltaY: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < self.sizeP) {
                defer { index &+= 1 }
            deltaX = self.dxArray[index] &+ x
            deltaY = self.dyArray[index] &+ self.y
            if (self.basicColorArray[index] !== self.CLEAR_COLOR) {
                self.basicSetColorUtil.setBasicColorP(graphics, self.basicColorArray[index])
            }
            self.animationInterfaceArray[index]!.paintXY(graphics, deltaX, deltaY)
            }
        }
    }
}

