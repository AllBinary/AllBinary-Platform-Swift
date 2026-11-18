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
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.NullUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.image.ImageToRotationImageArrayUtil

//TWB - Adjustments should be done in the resource creation and not at the animation level
open class PooledImageArrayRotationAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var allBinaryImageRotationAnimationInfo: JObject! = nil
    fileprivate var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    self.allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT
    
    }
    

    @discardableResult open class func createFactory(_ image: Image!, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> PooledImageArrayRotationAnimationFactory! {
        let totalAngle: Int32 = Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)
        let angleIncrement: Int32 = (totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity())
        return PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), -(image.getWidth() >> 2), -(image.getHeight() >> 2), angleIncrement, animationBehaviorFactory)
    }
    

    @discardableResult open class func createDXY(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> PooledImageArrayRotationAnimationFactory! {
        let totalAngle: Int32 = Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)
        let angleIncrement: Int32 = (totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity())
        return PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory)
    }
    

    public init(_ image: Image!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ angleIncrement: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.animationBehaviorFactory = animationBehaviorFactory
        let totalAngle: Int32 = Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)
        let imageArray: JArray<Image?>! = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle)
        self.allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy)
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(self.allBinaryImageRotationAnimationInfo, self.animationBehaviorFactory.getOrCreateInstance())
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

