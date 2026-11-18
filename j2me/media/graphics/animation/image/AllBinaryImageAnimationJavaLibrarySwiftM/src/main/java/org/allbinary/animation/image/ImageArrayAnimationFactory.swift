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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties

open class ImageArrayAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0
    fileprivate var imageArray: JArray<Image?>! = nil
    fileprivate var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    self.dx = 0
    self.dy = 0
    
    
    }
    

    public init(_ imageArray: JArray<Image?>!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.imageArray = imageArray
        self.animationBehaviorFactory = animationBehaviorFactory
        self.dx = dx
        self.dy = dy
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        if (self.dx != 0 || self.dy != 0) {
            return AdjustedImageArrayAnimation(self.imageArray, self.dx, self.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageArrayAnimation(self.imageArray, AnimationBehavior.getInstance())
        }
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

