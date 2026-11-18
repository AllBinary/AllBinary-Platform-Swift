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
// package org.allbinary.animation.image.sprite

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

open class HackRotationSpriteIndexedAnimation: RotationAnimation {
    public var sprite: Sprite! = nil
    fileprivate var image: Image! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ sprite: Sprite!, _ image: Image!, _ angleInfo: AngleInfo!, _ animationBehavior: AnimationBehavior!) {
        super.init(angleInfo, CircularIndexUtil.createInstance(360 / Int32(Int32(truncatingIfNeeded: angleInfo.getAngleIncrementInfo().getAngleIncrement()))), animationBehavior)
        self.initFields()
        self.sprite = sprite
        self.image = image
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
    }
    

    open func paintFrame(_ g: Graphics!, _ frame: Int32, _ x: Int32, _ y: Int32) {
        self.setFrame(frame)
        self.paintXY(g, x, y)
    }
    

    open override func paintXY(_ g: Graphics!, _ x: Int32, _ y: Int32) {
        self.sprite.setPosition(x, y)
        self.paint(g)
    }
    

    open func paint(_ g: Graphics!) {
        self.sprite.paint(g)
    }
    

    open override func nextRotation() {
        self.sprite.nextFrame()
    }
    

    open override func previousRotation() {
        self.sprite.prevFrame()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.sprite.getRawFrameCount()
    }
    

    open override func setFrame(_ frame: Int32) {
        self.sprite.setFrame(frame)
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.sprite.getFrame()
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
}

