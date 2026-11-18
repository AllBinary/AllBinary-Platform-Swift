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
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.image.ImageModifierUtil
// import org.allbinary.util.CircularIndexUtil

open class ImageArrayBaseRotationAnimation: RotationAnimation {
    fileprivate var imageModifierUtil: ImageModifierUtil! = nil
    fileprivate var originalImageArray: JArray<Image?>! = nil
    fileprivate var imageArray: JArray<Image?>! = nil
    fileprivate var currentImage: Image! = nil
    fileprivate var totalFrames: Int32 = 0
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate()
    
    self.imageArray = NullImage.NULL_IMAGE_ARRAY
    
    self.totalFrames = 0
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ originalImageArray: JArray<Image?>!, _ angleInfo: AngleInfo!, _ animationBehavior: AnimationBehavior!) {
        super.init(angleInfo, CircularIndexUtil.createInstance(360 / Int32(Int32(truncatingIfNeeded: angleInfo.getAngleIncrementInfo().getAngleIncrement()))), animationBehavior)
        self.initFields()
        self.originalImageArray = originalImageArray
        self.setImageArray(self.imageModifierUtil.getImageArray(originalImageArray))
        self.currentImage = self.imageArray[self.circularIndexUtil.getIndex()]
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
    }
    

    open override func setAlpha(_ alpha: Int32) {
        if (self.alphaP != alpha) {
            super.setAlpha(alpha)
            self.imageModifierUtil.reset()
            let index: Int32 = self.circularIndexUtil.getIndex()
            self.imageModifierUtil.setAlpha(self.originalImageArray[index], self.imageArray[index], index, self.alphaP)
        }
    }
    

    open override func nextRotation() {
        super.nextRotation()
        let index: Int32 = self.circularIndexUtil.getIndex()
        self.imageModifierUtil.setAlpha(self.originalImageArray[index], self.imageArray[index], index, self.alphaP)
        self.currentImage = self.imageArray[index]
    }
    

    open override func previousRotation() {
        super.previousRotation()
        let index: Int32 = self.circularIndexUtil.getIndex()
        self.imageModifierUtil.setAlpha(self.originalImageArray[index], self.imageArray[index], index, self.alphaP)
        self.currentImage = self.imageArray[index]
    }
    

    open override func setFrame(_ index2: Int32) {
        super.setFrame(index2)
        let index: Int32 = self.circularIndexUtil.getIndex()
        self.imageModifierUtil.setAlpha(self.originalImageArray[index], self.imageArray[index], index, self.alphaP)
        self.currentImage = self.imageArray[index]
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open func setImageArray(_ imageArray: JArray<Image?>!) {
        self.imageArray = imageArray
        self.totalFrames = imageArray.length
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.totalFrames)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawImage(self.currentImage, x, y, self.anchor)
    }
    

    open func close() {
        let disposalUtil: DisposalUtil! = DisposalUtil.getInstance()
        let size2: Int32 = self.imageArray.length
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            disposalUtil.disposeImage(self.imageArray[index])
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
        disposalUtil.disposeImage(self.currentImage)
    }
    

    open func finalize() {
        let disposalUtil: DisposalUtil! = DisposalUtil.getInstance()
        let size2: Int32 = self.imageArray.length
        do {
            var index: Int32 = 0
            while (index < size2) {
                defer { index &+= 1 }
            disposalUtil.disposeImage(self.imageArray[index])
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
        disposalUtil.disposeImage(self.currentImage)
    }
}

