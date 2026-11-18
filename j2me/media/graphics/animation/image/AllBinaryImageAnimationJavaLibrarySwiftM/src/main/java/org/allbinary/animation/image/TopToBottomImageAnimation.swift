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
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.graphics.Anchor

open class TopToBottomImageAnimation: ImageSegmentAnimation {
    fileprivate var currentHeight: Int32 = 0
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    self.anchor = Anchor.TOP_LEFT
    }
    

    public override init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ animationBehavior: AnimationBehavior!) {
        super.init(image, sequenceArray, animationBehavior)
        self.initFields()
        self.currentHeight = 0
        if (self.getSequence()[0] == -1) {
            self.setFrame(self.getSize() &- 1)
        }
    }
    

    open override func nextFrame() {
        if (self.getSequence()[0] == -1) {
            super.previousFrame()
        } else {
            super.nextFrame()
        }
        self.update()
    }
    

    open override func previousFrame() {
        if (self.getSequence()[0] == -1) {
            super.nextFrame()
        } else {
            super.previousFrame()
        }
        self.update()
    }
    

    open override func setFrame(_ index: Int32) {
        super.setFrame(index)
        self.update()
    }
    

    fileprivate func update() {
        self.currentHeight = self.getDrawHeight() &* self.getFrame() / self.getSize()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawRegion(self.getImage(), self.getStartX(), self.getStartY(), self.getDrawWidth(), self.currentHeight, Sprite.TRANS_NONE, x, y, self.anchor)
    }
}

