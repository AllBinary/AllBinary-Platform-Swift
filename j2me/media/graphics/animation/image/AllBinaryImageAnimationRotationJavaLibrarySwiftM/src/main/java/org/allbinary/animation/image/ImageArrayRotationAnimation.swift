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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.math.AngleInfo

open class ImageArrayRotationAnimation: ImageArrayBaseRotationAnimation {
    fileprivate var expectedTotalFrames: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.expectedTotalFrames = 0
    }
    

    @discardableResult open class func createAnimation(_ anyType: JObject!, _ animationBehavior: AnimationBehavior!) -> ImageArrayRotationAnimation! {
        let imageRotationAnimationInfo: ImageArrayRotationAnimationInfo! = (anyType as! ImageArrayRotationAnimationInfo)
        return ImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior)
    }
    

    public init(_ imageArray: JArray<Image?>!, _ angleInfo: AngleInfo!, _ totalAngle: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(imageArray, angleInfo, animationBehavior)
        self.initFields()
        self.initImageArray(imageArray, angleInfo, totalAngle)
    }
    

    fileprivate func initImageArray(_ imageArray: JArray<Image?>!, _ angleInfo: AngleInfo!, _ totalAngle: Int32) {
        self.expectedTotalFrames = totalAngle / Int32(Int32(truncatingIfNeeded: self.angleInfo.getAngleIncrementInfo().getAngleIncrement()))
        self.angleInfo.adjustAngle(0)
        if (self.expectedTotalFrames != self.getSize()) {
            jThrow(JException("Exception", "Wrong Number of Frames"))
        }
    }
    

    open override func setImageArray(_ imageArray: JArray<Image?>!) {
        super.setImageArray(imageArray)
        self.angleInfo.adjustAngle(0)
    }
}

