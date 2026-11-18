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
// import org.allbinary.logic.math.PrimitiveIntUtil

open class RightToLeftImageAnimation: ImageSegmentAnimation {
    fileprivate var startWidth: Int32 = 0
    fileprivate var currentWidth: Int32 = 0
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.startWidth = 0
    self.currentWidth = 0
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ image: Image!, _ animationBehavior: AnimationBehavior!) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior)
        self.initFields()
        self.setFrame(self.getSize() &- 1)
    }
    

    open override func nextFrame() {
        super.previousFrame()
        self.update()
    }
    

    open override func previousFrame() {
        super.nextFrame()
        self.update()
    }
    

    open override func setFrame(_ index: Int32) {
        super.setFrame(index)
        self.update()
    }
    

    fileprivate func update() {
        self.startWidth = self.getDrawWidth() &* self.getFrame() / self.getSize()
        self.currentWidth = self.getDrawWidth() &- self.startWidth
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawRegion(self.getImage(), self.startWidth, self.getStartY(), self.currentWidth, self.getDrawHeight(), Sprite.TRANS_NONE, x &+ self.startWidth, y, self.anchor)
    }
}

