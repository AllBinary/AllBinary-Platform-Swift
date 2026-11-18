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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.image.ImageToRotationImageArrayUtil

open class AllBinaryArrayImageRotationAnimationFactory: BaseImageAnimationFactory {
    fileprivate var imageArray: JArray<Image?>! = nil
    fileprivate var angleIncrement: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.imageArray = NullImage.NULL_IMAGE_ARRAY
    
    }
    

    @discardableResult open class func createFactory(_ image: Image!, _ dx: Int32, _ dy: Int32) -> AllBinaryArrayImageRotationAnimationFactory! {
        let arrayImageRotationAnimationFactory: AllBinaryArrayImageRotationAnimationFactory! = AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), Int32(Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)) / GameConfigurationCentral.getInstance().getGameControlFidelity(), AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    }
    

    @discardableResult open class func createFactoryA(_ image: Image!, _ dx: Int32, _ dy: Int32, _ angleIncrement: Int32) -> AllBinaryArrayImageRotationAnimationFactory! {
        let arrayImageRotationAnimationFactory: AllBinaryArrayImageRotationAnimationFactory! = AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance())
        arrayImageRotationAnimationFactory.initDXY(dx, dy)
        return arrayImageRotationAnimationFactory
    }
    

    public init(_ image: Image!, _ width: Int32, _ height: Int32, _ angleIncrement: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        self.initFields()
        self.angleIncrement = angleIncrement
        self.`init`()
    }
    

    fileprivate func `init`() {
        self.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(self.getImage(), self.getAngleIncrement(), Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)))
    }
    

    fileprivate func initDXY(_ dx: Int32, _ dy: Int32) {
        self.animationFactoryInitializationVisitor.dx = dx
        self.animationFactoryInitializationVisitor.dy = dy
        self.animationFactoryInitializationVisitor.originalDx = dx
        self.animationFactoryInitializationVisitor.originalDy = dy
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let scaledImageArray: JArray<Image?>! = JArray<Image?>(self.imageArray.length, nil)
        let size: Int32 = scaledImageArray.length
        let image: Image! = self.getImage()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            scaledImageArray[index] = self.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
            }
        }
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            self.animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance(Int16(truncatingIfNeeded: self.getAngleIncrement())), Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE), self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance(Int16(truncatingIfNeeded: self.getAngleIncrement())), Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE), self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    open func setImageArray(_ imageArray: JArray<Image?>!) {
        self.imageArray = imageArray
    }
    

    @discardableResult open func getAngleIncrement() -> Int32 {
        return self.angleIncrement
    }
}

