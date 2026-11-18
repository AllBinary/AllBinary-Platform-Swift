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
// import org.allbinary.DisposalUtil
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

open class TweenedImageAnimation: IndexedAnimation {
    fileprivate var image: Image! = nil
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0
    fileprivate var totalFrames: Int32 = 0
    public var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ image: Image!, _ dx: Int32, _ dy: Int32, _ totalFrames: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.image = image
        self.dx = dx
        self.dy = dy
        self.totalFrames = totalFrames
        self.circularIndexUtil = CircularIndexUtil.createInstance(self.totalFrames)
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
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        let frame: Int32 = self.getFrame()
        let currentX: Int32 = self.dx &* frame
        let currentY: Int32 = self.dy &* frame
        graphics.drawImage(self.image, x &+ currentX, y &+ currentY, self.anchor)
    }
    

    open func close() {
        DisposalUtil.getInstance().disposeImage(self.image)
    }
    

    open func finalize() {
        DisposalUtil.getInstance().disposeImage(self.image)
    }
}

