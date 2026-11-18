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

open class ImageAnimation: IndexedAnimation {
    fileprivate var image: Image! = nil
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ image: Image!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.image = image
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
    }
    

    open override func nextFrame() {
    }
    

    open override func previousFrame() {
    }
    

    open override func setFrame(_ index: Int32) {
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return 0
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return 1
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawImage(self.image, x, y, self.anchor)
    }
    

    @discardableResult open func getImage() -> Image! {
        return self.image
    }
    

    open func close() {
        DisposalUtil.getInstance().disposeImage(self.image)
    }
    

    open func finalize() {
        DisposalUtil.getInstance().disposeImage(self.image)
    }
}

