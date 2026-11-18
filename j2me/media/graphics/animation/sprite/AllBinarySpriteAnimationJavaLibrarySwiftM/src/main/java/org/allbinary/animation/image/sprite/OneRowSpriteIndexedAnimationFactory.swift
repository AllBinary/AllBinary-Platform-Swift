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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

open class OneRowSpriteIndexedAnimationFactory: BaseImageAnimationFactory {
    fileprivate var animationFactorySpriteScaleUtil: AnimationFactorySpriteScaleUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    }
    

    @discardableResult open class func createFactoryDX(_ image: Image!, _ dx: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> OneRowSpriteIndexedAnimationFactory! {
        let oneRowSpriteIndexedAnimationFactory: OneRowSpriteIndexedAnimationFactory! = OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.initW(dx)
        return oneRowSpriteIndexedAnimationFactory
    }
    

    @discardableResult open class func createFactoryDXY(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> OneRowSpriteIndexedAnimationFactory! {
        let oneRowSpriteIndexedAnimationFactory: OneRowSpriteIndexedAnimationFactory! = OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        oneRowSpriteIndexedAnimationFactory.`init`(dx, dy)
        return oneRowSpriteIndexedAnimationFactory
    }
    

    @discardableResult open class func createFactoryWH(_ image: Image!, _ width: Int32, _ height: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> OneRowSpriteIndexedAnimationFactory! {
        return OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    }
    

    @discardableResult open class func createFactory(_ image: Image!, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> OneRowSpriteIndexedAnimationFactory! {
        return OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    }
    

    public override init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        self.initFields()
    }
    

    open func `init`(_ dx: Int32, _ dy: Int32) {
        self.animationFactoryInitializationVisitor.dx = dx
        self.animationFactoryInitializationVisitor.dy = dy
    }
    

    open func initW(_ dx: Int32) {
        self.`init`(dx, 0)
        self.animationFactoryInitializationVisitor.dx = self.animationFactoryInitializationVisitor.dx &+ -(self.animationFactoryInitializationVisitor.width >> 2)
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let sprite: Sprite! = self.animationFactorySpriteScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedSpriteIndexedAnimation(sprite, self.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return SpriteIndexedAnimation(sprite, self.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
}

