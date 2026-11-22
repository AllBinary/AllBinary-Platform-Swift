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
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.direction.Direction
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo

open class AllBinarySpriteRotationAnimation: HackRotationSpriteIndexedAnimation {
    

    public init(_ sprite: Sprite!, _ image: Image!, _ animationBehavior: AnimationBehavior!) {
        super.init(sprite, image, AngleInfo.getInstance(Int16(truncatingIfNeeded: (Int32(Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)) / sprite.getRawFrameCount()))), animationBehavior)
        self.angleInfo.adjustAngle(self.sprite.getFrame())
    }
    

    open override func nextRotation() {
        self.sprite.nextFrame()
        self.angleInfo.adjustAngle(self.sprite.getFrame())
    }
    

    open override func previousRotation() {
        self.sprite.prevFrame()
        self.angleInfo.adjustAngle(self.sprite.getFrame())
    }
    

    open override func setFrameByDirection(_ direction: Direction!) {
        let angle: Angle! = self.directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    }
    

    open override func setFrameToAngle(_ angle: Angle!) {
        self.adjustFrameToAngle(angle)
    }
    

    open override func setFrame(_ index: Int32) {
        self.sprite.setFrame(index)
        self.angleInfo.adjustAngle(self.getFrame())
    }
    

    open override func adjustFrameToAngle(_ angle: Angle!) {
        self.adjustFrame(angle.getValue())
    }
    

    open override func adjustFrame(_ angle: Int16) {
        self.setFrame(self.frameUtil.getFrameForAngle(angle, Int32(truncatingIfNeeded: self.angleInfo.getAngleIncrementInfo().getAngleIncrement())))
    }
}

