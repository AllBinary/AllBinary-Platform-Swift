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
// import org.allbinary.animation.VectorAnimation
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.image.AnimationFrameToImageUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.image.ImageToRotationImageArrayUtil
// import org.allbinary.vector.VectorInfo

open class VectorToImageArrayRotationAnimationFactory: BaseImageAnimationFactory {
    fileprivate var imageArray: JArray<Image?>! = nil
    fileprivate var angleIncrement: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.imageArray = NullImage.NULL_IMAGE_ARRAY
    self.angleIncrement = 0
    }
    

    public init(_ vectorInfo: VectorInfo!, _ basicColor: BasicColor!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory)
        self.initFields()
        self.`init`()
    }
    

    open func `init`() {
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        self.angleIncrement = Int32(Int32(truncatingIfNeeded: angleFactory.TOTAL_ANGLE)) / GameConfigurationCentral.getInstance().getGameControlFidelity()
        self.imageArray = ImageToRotationImageArrayUtil.getInstance().generate(self.getImage(), self.getAngleIncrement(), Int32(truncatingIfNeeded: angleFactory.TOTAL_ANGLE))
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedImageArrayRotationAnimation(self.imageArray, AngleInfo.getInstance(Int16(truncatingIfNeeded: self.getAngleIncrement())), Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE), self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return AdjustedImageArrayRotationAnimation.createAnimation(self.imageArray, AngleInfo.getInstance(Int16(truncatingIfNeeded: self.angleIncrement)), Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE), self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    @discardableResult open func getAngleIncrement() -> Int32 {
        return self.angleIncrement
    }
    

    open override func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

