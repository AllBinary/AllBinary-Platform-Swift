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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

open class ImageArrayAnimation: IndexedAnimation {
    fileprivate var imageArray: JArray<Image?>! = nil
    fileprivate var totalFrames: Int32 = 0
    public var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.imageArray = NullImage.NULL_IMAGE_ARRAY
    self.totalFrames = 0
    self.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ imageArray: JArray<Image?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.setImageArray(imageArray)
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
    }
    

    open override func nextFrame() {
        self.circularIndexUtil.next()
    }
    

    open override func previousFrame() {
        self.circularIndexUtil.previous()
    }
    

    open override func setFrame(_ index: Int32) {
        self.circularIndexUtil.setIndex(index)
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.circularIndexUtil.getIndex()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.totalFrames
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    @discardableResult open func getImage(_ index: Int32) -> Image! {
        return self.imageArray[index]
    }
    

    @discardableResult open func getImageArray() -> JArray<Image?>! {
        return self.imageArray
    }
    

    open func setImageArray(_ imageArray: JArray<Image?>!) {
        self.imageArray = imageArray
        self.totalFrames = imageArray.length
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.totalFrames)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawImage(self.imageArray[self.circularIndexUtil.getIndex()], x, y, self.anchor)
    }
}

