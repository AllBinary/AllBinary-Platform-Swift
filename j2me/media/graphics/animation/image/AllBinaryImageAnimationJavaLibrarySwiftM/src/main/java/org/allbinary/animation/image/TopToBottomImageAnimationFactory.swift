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

open class TopToBottomImageAnimationFactory: BaseImageAnimationFactory {
    

    public init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, sequenceArray, image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory)
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let scaledImage: Image! = self.animationFactoryImageScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        return TopToBottomImageAnimation(scaledImage, self.getSequenceArray(), self.animationBehaviorFactory.getOrCreateInstance())
    }
}

