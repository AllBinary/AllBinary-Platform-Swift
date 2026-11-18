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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.image.ImageCopyUtil

open class AllBinaryJ2SEImageRotationAnimationFactory: BaseImageAnimationFactory {
    public var angleIncrementP: Int16 = 0
    fileprivate var resizeCanvasForRotation: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    @discardableResult open class func createDXY(_ image: Image!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ angleIncrement: Int16, _ animationBehaviorFactory: AnimationBehaviorFactory!, _ resizeCanvasForRotation: Bool) -> AllBinaryJ2SEImageRotationAnimationFactory! {
        let imageRotationAnimationFactory: AllBinaryJ2SEImageRotationAnimationFactory! = AllBinaryJ2SEImageRotationAnimationFactory(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dx = dx
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dy = dy
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDx = dx
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDy = dy
        return imageRotationAnimationFactory
    }
    

    public init(_ image: Image!, _ width: Int32, _ height: Int32, _ angleIncrement: Int16, _ animationBehaviorFactory: AnimationBehaviorFactory!, _ resizeCanvasForRotation: Bool) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        self.initFields()
        self.angleIncrementP = angleIncrement
        self.resizeCanvasForRotation = resizeCanvasForRotation
    }
    

    @discardableResult fileprivate func getCanvasImage() -> Image! {
        let features: Features! = Features.getInstance()
        if (self.resizeCanvasForRotation && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return ImageCopyUtil.getInstance().createImageScale(self.getImage(), 1.44, false)
        } else {
            return self.getImage()
        }
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let imageCopyUtil: ImageCopyUtil! = ImageCopyUtil.getInstance()
        let canvasImage: Image! = self.getCanvasImage()
        var scaledImage: Image! = self.animationFactoryImageScaleUtil.createImage(canvasImage, self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        let openGLUtil: OpenGLUtil! = OpenGLUtil.getInstance()
        scaledImage = openGLUtil.addImage(scaledImage)
        let copyOfScaledImage: Image! = imageCopyUtil.createImageForRotation(scaledImage)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            self.animationFactoryImageScaleUtil.processAdjust(self)
            return AllBinaryAdjustedJ2SEImageRotationAnimation(scaledImage, copyOfScaledImage, AngleInfo.getInstance(self.angleIncrementP), AngleFactory.getInstance().TOTAL_ANGLE, self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return AllBinaryJ2SEImageRotationAnimation(scaledImage, copyOfScaledImage, AngleInfo.getInstance(self.angleIncrementP), AngleFactory.getInstance().TOTAL_ANGLE, self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    @discardableResult open func getAngleIncrement() -> Int16 {
        return self.angleIncrementP
    }
}

