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
// import org.allbinary.AndroidUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

open class SpriteIndexedAnimationFactory: BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var animationFactorySpriteScaleUtil: AnimationFactorySpriteScaleUtil! = nil
    fileprivate var basicColorArray: JArray<BasicColor?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    self.basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY
    }
    

    @discardableResult open class func createCWHDXY(_ image: Image!, _ basicColorArray: JArray<BasicColor?>!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> SpriteIndexedAnimationFactory! {
        return SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory)
    }
    

    @discardableResult open class func createCWH(_ image: Image!, _ basicColorArray: JArray<BasicColor?>!, _ width: Int32, _ height: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> SpriteIndexedAnimationFactory! {
        let spriteIndexedAnimationFactory: SpriteIndexedAnimationFactory! = SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        spriteIndexedAnimationFactory.initHWH()
        return spriteIndexedAnimationFactory
    }
    

    @discardableResult open class func createWH(_ image: Image!, _ width: Int32, _ height: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> SpriteIndexedAnimationFactory! {
        return SpriteIndexedAnimationFactory(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
    }
    

    public init(_ image: Image!, _ basicColorArray: JArray<BasicColor?>!, _ sequenceArray: JArray<Int32>!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        self.initFields()
        self.basicColorArray = basicColorArray
    }
    

    fileprivate func initHWH() {
        self.animationFactoryInitializationVisitor.dx = -(self.animationFactoryInitializationVisitor.width >> 2)
        self.animationFactoryInitializationVisitor.dy = -(self.animationFactoryInitializationVisitor.height >> 2)
        if (AndroidUtil.isAndroid()) {
            self.animationFactoryInitializationVisitor.dx = self.animationFactoryInitializationVisitor.dx &+ 3
        }
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let sprite: Sprite! = self.animationFactorySpriteScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedSpriteIndexedAnimation(sprite, self.getImage(), self.basicColorArray, self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return SpriteIndexedAnimation(sprite, self.getImage(), self.basicColorArray, self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return self.getInstance(0)
    }
}

