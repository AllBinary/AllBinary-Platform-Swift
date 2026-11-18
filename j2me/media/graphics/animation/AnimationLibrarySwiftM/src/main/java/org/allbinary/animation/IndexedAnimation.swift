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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.string.CommonStrings

open class IndexedAnimation: Animation, IndexedAnimationInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var animationBehaviorP: AnimationBehavior! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    }
    

    public init(_ animationBehavior: AnimationBehavior!) {
        super.init()
        self.initFields()
        self.animationBehaviorP = animationBehavior
    }
    

    @discardableResult open func getAnimationBehavior() -> AnimationBehavior! {
        return self.animationBehaviorP
    }
    

    open func reset() {
        self.animationBehaviorP.reset()
        self.setFrame(0)
    }
    

    open func setFrame(_ index: Int32) {
    }
    

    @discardableResult open func getFrame() -> Int32 {
        return 0
    }
    

    @discardableResult open func getAnimationSize() -> Int32 {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func getSize() -> Int32 {
        return 0
    }
    

    open func previousFrame() {
    }
    

    @discardableResult open func isLastFrame() -> Bool {
        if (self.getFrame() == self.getSize() &- 1) {
            return true
        } else {
            return false
        }
    }
    

    open func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open func setState(_ indexedAnimation: IndexedAnimation!) {
        self.setFrame(indexedAnimation.getFrame())
        self.setDx(indexedAnimation.getDx())
        self.setDy(indexedAnimation.getDy())
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return 0
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return 0
    }
}

