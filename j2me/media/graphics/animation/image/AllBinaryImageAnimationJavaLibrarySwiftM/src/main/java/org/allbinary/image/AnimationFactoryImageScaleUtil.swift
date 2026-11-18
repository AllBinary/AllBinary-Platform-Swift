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
// package org.allbinary.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.image.AnimationFactoryInitializationVisitor
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.image.ImageJ2MEScaleUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class AnimationFactoryImageScaleUtil: JObject {
    fileprivate static let instance: AnimationFactoryImageScaleUtil! = AnimationFactoryImageScaleUtil()
    fileprivate var imageScaleUtil: ImageJ2MEScaleUtil! = nil

    private func initFields() {
    self.imageScaleUtil = ImageJ2MEScaleUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AnimationFactoryImageScaleUtil! {
        return AnimationFactoryImageScaleUtil.instance
    }
    

    @discardableResult open func createImage(_ image: Image!, _ width: Int32, _ height: Int32, _ scaleWidth: Int32, _ scaleHeight: Int32) -> Image! {
        var scaledImage: Image! = nil
        if (scaleWidth != 0 && scaleHeight != 0) {
            let scaleX: Float = (Float(scaleWidth)) / (Float(width))
            let scaleY: Float = (Float(scaleHeight)) / (Float(height))
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
                scaledImage = image
            } else {
                let scaledWidth: Int32 = JMath.toInt32(Double((scaleX * Float(width))))
                let scaledHeight: Int32 = JMath.toInt32(Double((scaleY * Float(height))))
                scaledImage = self.imageScaleUtil.scale(image, scaledWidth, scaledHeight)
            }
        } else {
            scaledImage = image
        }
        return scaledImage
    }
    

    open func processAdjust(_ baseImageAnimationFactory: BaseImageAnimationFactory!) {
        let scaleProperties: ScaleProperties! = baseImageAnimationFactory.getScalePropertiesP()
        if (scaleProperties.scaleWidth != 0 && scaleProperties.scaleHeight != 0) {
            let animationFactoryInitializationVisitor: AnimationFactoryInitializationVisitor! = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP()
            let scaleX: Float = (Float(scaleProperties.scaleWidth)) / (Float(animationFactoryInitializationVisitor.width))
            let scaleY: Float = (Float(scaleProperties.scaleHeight)) / (Float(animationFactoryInitializationVisitor.height))
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
            } else {
                animationFactoryInitializationVisitor.dx = JMath.toInt32(Double((Float(animationFactoryInitializationVisitor.originalDx) * scaleX)))
                animationFactoryInitializationVisitor.dy = JMath.toInt32(Double((Float(animationFactoryInitializationVisitor.originalDy) * scaleY)))
            }
        } else {
        }
    }
}

