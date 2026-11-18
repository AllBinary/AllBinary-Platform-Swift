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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorCompositeInterface
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels

open class SpriteIndexedAnimation: IndexedAnimation, ColorCompositeInterface {
    public var sprite: Sprite! = nil
    public var image: Image! = nil
    fileprivate var basicColorArray: JArray<BasicColor?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    }
    

    public init(_ sprite: Sprite!, _ image: Image!, _ basicColorArray: JArray<BasicColor?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.sprite = sprite
        self.image = image
        self.basicColorArray = basicColorArray
        if (self.basicColorArray.length != 0 && self.getSize() != self.basicColorArray.length) {
            jThrow(JException("Exception", StringMaker().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(self.getSize()).append("!=").appendint(self.basicColorArray.length).toString()))
        }
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        do {
            var index: Int32 = 0
            while (index < self.basicColorArray.length) {
                defer { index &+= 1 }
            if (basicColor === self.basicColorArray[index]) {
                self.setFrame(index)
                break
            }
            }
        }
    }
    

    @discardableResult open override func getBasicColorP() -> BasicColor! {
        if (self.basicColorArray.length < self.getFrame()) {
            return self.basicColorArray[self.getFrame()]
        } else {
            return BasicColorFactory.getInstance().WHITE
        }
    }
    

    open func paintFrame(_ graphics: Graphics!, _ frame: Int32, _ x: Int32, _ y: Int32) {
        self.setFrame(frame)
        self.sprite.setPosition(x, y)
        self.sprite.paint(graphics)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.sprite.setPosition(x, y)
        self.sprite.paint(graphics)
    }
    

    open func paint(_ graphics: Graphics!) {
        self.sprite.paint(graphics)
    }
    

    open override func nextFrame() {
        self.sprite.nextFrame()
    }
    

    open override func previousFrame() {
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
    

    @discardableResult open override func isLastFrame() -> Bool {
        if (self.sprite.getFrame() == self.getSize() &- 1) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func getLastFrame() -> Int32 {
        return self.getSize()
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open func close() {
    }
    

    open func finalize() {
    }
}

