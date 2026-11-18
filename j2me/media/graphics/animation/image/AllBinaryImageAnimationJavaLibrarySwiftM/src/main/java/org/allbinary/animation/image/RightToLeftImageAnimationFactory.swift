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
// import org.allbinary.logic.math.PrimitiveIntUtil

open class RightToLeftImageAnimationFactory: BaseImageAnimationFactory {
    

    public init(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), image.getWidth(), image.getHeight(), dx, dy, animationBehaviorFactory)
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let scaledImage: Image! = self.animationFactoryImageScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            self.animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedRightToLeftImageAnimation(scaledImage, self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return RightToLeftImageAnimation(scaledImage, self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

