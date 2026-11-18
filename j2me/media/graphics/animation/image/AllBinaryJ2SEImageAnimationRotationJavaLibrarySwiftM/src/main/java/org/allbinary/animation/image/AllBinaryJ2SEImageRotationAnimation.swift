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
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.DisposalUtil
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.image.ImageCopyUtil
// import org.allbinary.media.image.ImageModifierUtil
// import org.allbinary.media.image.ImageRotationUtil

open class AllBinaryJ2SEImageRotationAnimation: ImageBaseRotationAnimation {
    fileprivate var imageRotationUtil: ImageRotationUtil! = nil
    fileprivate var imageModifierUtil: ImageModifierUtil! = nil
    fileprivate var realOriginalImage: Image! = nil
    fileprivate var originalImageArray: JArray<Image?>! = nil
    fileprivate var twoImages: JArray<Image?>! = nil
    fileprivate var imageToShow: Image! = nil
    fileprivate var bufferedImageIndex: Int32 = 0
    fileprivate var lastScaleX: Float = 0.0
    fileprivate var lastScaleY: Float = 0.0
    fileprivate var scaleX: Float = 0.0
    fileprivate var scaleY: Float = 0.0
    fileprivate var maxScaleX: Float = 0.0
    fileprivate var maxScaleY: Float = 0.0
    fileprivate var alphaProcessor: ModifierBaseProcessor! = nil
    fileprivate var setColorProcessor: ModifierBaseProcessor! = nil
    fileprivate var changeColorProcessor: ModifierBaseProcessor! = nil
    fileprivate var scaleProcessor: ScaleBaseProcessor! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.imageRotationUtil = ImageRotationUtil.getInstance()
    self.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
    
    self.originalImageArray = JArray<Image?>(1, nil)
    self.twoImages = JArray<Image?>(2, nil)
    
    self.bufferedImageIndex = 0
    self.lastScaleX = 1.0
    self.lastScaleY = 1.0
    self.scaleX = 1.0
    self.scaleY = 1.0
    self.maxScaleX = 0.0
    self.maxScaleY = 0.0
    self.alphaProcessor = ModifierBaseProcessor.getInstance()
    self.setColorProcessor = ModifierBaseProcessor.getInstance()
    self.changeColorProcessor = ModifierBaseProcessor.getInstance()
    self.scaleProcessor = ScaleProcessor.getInstance()
    }
    

    public init(_ originalImage: Image!, _ image: Image!, _ angleInfo: AngleInfo!, _ totalAngle: Int16, _ animationBehavior: AnimationBehavior!) {
        super.init(image, angleInfo, totalAngle, animationBehavior)
        self.initFields()
        self.realOriginalImage = originalImage
        self.originalImageArray[0] = originalImage
        self.imageToShow = image
        self.twoImages[0] = image
        self.twoImages[1] = ImageCopyUtil.getInstance().createImageForRotation(image)
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        var changed: Bool = false
        if (self.getBasicColorP() == nil || self.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true
        }
        super.setBasicColorP(basicColor)
        if (changed) {
            self.setColorProcessor = SetColorProcessor.getInstance()
            self.updateImage()
        }
    }
    

    open override func changeBasicColor(_ basicColor: BasicColor!) {
        var changed: Bool = false
        if (self.getChangeBasicColor() == nil || self.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true
        }
        super.changeBasicColor(basicColor)
        if (changed) {
            self.changeColorProcessor = ChangeColorProcessor.getInstance()
            self.updateImage()
        }
    }
    

    open override func setAlpha(_ alpha: Int32) {
        var changed: Bool = false
        if (self.alphaP != alpha) {
            changed = true
        }
        super.setAlpha(alpha)
        if (changed) {
            self.alphaProcessor = AlphaProcessor.getInstance()
            self.updateImage()
        }
    }
    

    open override func setScale(_ scaleX: Float, _ scaleY: Float) {
        self.scaleX = scaleX
        self.scaleY = scaleY
        if (self.scaleX != self.lastScaleX || self.scaleY != self.lastScaleY) {
            self.scaleProcessor.update(self.realOriginalImage, self.originalImageArray, self.twoImages, self.bufferedImageIndex, self.scaleX, self.scaleY, self.maxScaleX, self.maxScaleY)
            self.updateImage()
        }
        self.lastScaleX = self.scaleX
        self.lastScaleY = self.scaleY
    }
    

    open override func setMaxScale(_ maxScaleX: Float, _ maxScaleY: Float) {
        self.maxScaleX = maxScaleX
        self.maxScaleY = maxScaleY
        self.scaleProcessor.update(self.realOriginalImage, self.originalImageArray, self.twoImages, self.bufferedImageIndex, self.scaleX, self.scaleY, self.maxScaleX, self.maxScaleY)
        self.updateImage()
    }
    

    open override func nextRotation() {
        super.nextRotation()
        self.updateImage()
    }
    

    open override func previousRotation() {
        super.previousRotation()
        self.updateImage()
    }
    

    fileprivate func updateImage() {
        self.imageRotationUtil.rotateImage(self.originalImageArray[0], self.twoImages[self.bufferedImageIndex], Int32(Int32(truncatingIfNeeded: self.angleInfo.getAngle())) &+ 90)
        self.alphaProcessor.updateAlpha(self.imageModifierUtil, NullImage.NULL_IMAGE, self.twoImages[self.bufferedImageIndex], 0, self.alphaP)
        self.setColorProcessor.updateColor(self.imageModifierUtil, NullImage.NULL_IMAGE, self.twoImages[self.bufferedImageIndex], 0, self.basicColor)
        self.changeColorProcessor.updateColor(self.imageModifierUtil, NullImage.NULL_IMAGE, self.twoImages[self.bufferedImageIndex], 0, self.changeBasicColorP)
        self.swap()
    }
    

    open override func setFrame(_ index: Int32) {
        super.setFrame(index)
        self.updateImage()
    }
    

    open func swap() {
        self.imageToShow = self.twoImages[self.bufferedImageIndex]
        if (self.bufferedImageIndex == 0) {
            self.bufferedImageIndex = 1
        } else {
            self.bufferedImageIndex = 0
        }
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawImage(self.imageToShow, x, y, self.anchor)
    }
    

    open override func close() {
        super.close()
        let disposalUtil: DisposalUtil! = DisposalUtil.getInstance()
        let size2: Int32 = self.twoImages.length
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            disposalUtil.disposeImage(self.twoImages[index])
            }
        }
        let size: Int32 = self.originalImageArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            disposalUtil.disposeImage(self.originalImageArray[index])
            }
        }
        disposalUtil.disposeImage(self.realOriginalImage)
        disposalUtil.disposeImage(self.imageToShow)
    }
    

    open override func finalize() {
        super.finalize()
        let disposalUtil: DisposalUtil! = DisposalUtil.getInstance()
        let size2: Int32 = self.twoImages.length
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            disposalUtil.disposeImage(self.twoImages[index])
            }
        }
        let size: Int32 = self.originalImageArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            disposalUtil.disposeImage(self.originalImageArray[index])
            }
        }
        disposalUtil.disposeImage(self.realOriginalImage)
        disposalUtil.disposeImage(self.imageToShow)
    }
}

