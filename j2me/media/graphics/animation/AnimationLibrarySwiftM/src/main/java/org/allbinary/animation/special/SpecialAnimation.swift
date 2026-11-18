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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.IndexedAnimationBehavior

open class SpecialAnimation: IndexedAnimation, SpecialAnimationInterface {
    fileprivate static let NULL_SPECIAL_ANIMATION: SpecialAnimation! = SpecialAnimation(IndexedAnimationBehavior(1, 250))
    

    @discardableResult open class func getInstance() -> SpecialAnimation! {
        return SpecialAnimation.NULL_SPECIAL_ANIMATION
    }
    

    public override init(_ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
    }
    

    open override func nextFrame() {
        let indexedAnimationBehavior: IndexedAnimationBehavior! = ((self.animationBehaviorP as! IndexedAnimationBehavior))
        indexedAnimationBehavior.loopIndex &+= 1
    }
    

    open func setLastFrame() {
    }
    

    @discardableResult open func isComplete() -> Bool {
        return false
    }
    

    open func `open`() {
    }
    

    open func close() {
    }
    

    open func process() {
    }
}

