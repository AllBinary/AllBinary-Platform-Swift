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
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

open class ImageBaseRotationAnimation: RotationAnimation {
    fileprivate var image: Image! = nil
    public var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ image: Image!, _ angleInfo: AngleInfo!, _ totalAngle: Int16, _ animationBehavior: AnimationBehavior!) {
        super.init(angleInfo, CircularIndexUtil.createInstance(Int32(totalAngle) / Int32(angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        self.initFields()
        self.image = image
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
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
    

    @discardableResult open override func getWidth() -> Int32 {
        return self.image.getWidth()
    }
    

    @discardableResult open override func getHeight() -> Int32 {
        return self.image.getHeight()
    }
    

    open func close() {
        DisposalUtil.getInstance().disposeImage(self.image)
    }
    

    open func finalize() {
        DisposalUtil.getInstance().disposeImage(self.image)
    }
}

