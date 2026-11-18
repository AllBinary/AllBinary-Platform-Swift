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

open class LeftToRightImageAnimationFactory: BaseImageAnimationFactory {
    

    public init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, sequenceArray, image.getWidth(), image.getHeight(), dx, dy, animationBehaviorFactory)
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let scaledImage: Image! = self.animationFactoryImageScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            self.animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedLeftToRightImageAnimation(scaledImage, self.getSequenceArray(), self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return LeftToRightImageAnimation(scaledImage, self.getSequenceArray(), self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

