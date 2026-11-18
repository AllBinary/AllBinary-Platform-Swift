/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.graphics.opengles.OpenGLUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

open class ImageAnimationFactory: BaseImageAnimationFactory {
    

    @discardableResult open class func createFactory(_ image: Image!) -> ImageAnimationFactory! {
        return ImageAnimationFactory(image, image.getWidth(), image.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance())
    }
    

    public init(_ image: Image!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        var scaledImage: Image! = self.animationFactoryImageScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        let openGLUtil: OpenGLUtil! = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            self.animationFactoryImageScaleUtil.processAdjust(self)
            return AdjustedImageAnimation(scaledImage, self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return ImageAnimation(scaledImage, self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

