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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorUtil

open class AdjustedSpriteIndexedAnimation: SpriteIndexedAnimation {
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ sprite: Sprite!, _ image: Image!, _ basicColorArray: JArray<BasicColor?>!, _ dx: Int32, _ dy: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(sprite, image, basicColorArray, animationBehavior)
        self.initFields()
        self.dx = dx
        self.dy = dy
    }
    

    open override func paintFrame(_ graphics: Graphics!, _ frame: Int32, _ x: Int32, _ y: Int32) {
        self.setFrame(frame)
        self.sprite.setPosition(x &+ self.dx, y &+ self.dy)
        super.paint(graphics)
    }
    

    open override func paintXY(_ g: Graphics!, _ x: Int32, _ y: Int32) {
        self.sprite.setPosition(x &+ self.dx, y &+ self.dy)
        super.paint(g)
    }
    

    open override func paint(_ g: Graphics!) {
        self.sprite.setPosition(self.dx, self.dy)
        super.paint(g)
    }
}

