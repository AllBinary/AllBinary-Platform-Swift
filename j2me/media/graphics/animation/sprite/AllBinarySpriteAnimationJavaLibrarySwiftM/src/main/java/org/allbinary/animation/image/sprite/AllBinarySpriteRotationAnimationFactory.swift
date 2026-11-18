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
// import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

open class AllBinarySpriteRotationAnimationFactory: BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var animationFactorySpriteScaleUtil: AnimationFactorySpriteScaleUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    }
    

    @discardableResult open class func createWHDY(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> AllBinarySpriteRotationAnimationFactory! {
        let spriteRotationAnimationFactory: AllBinarySpriteRotationAnimationFactory! = AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.initWH(dx, dy)
        return spriteRotationAnimationFactory
    }
    

    @discardableResult open class func createWH(_ image: Image!, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> AllBinarySpriteRotationAnimationFactory! {
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory)
    }
    

    @discardableResult open class func createDXY(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> AllBinarySpriteRotationAnimationFactory! {
        let spriteRotationAnimationFactory: AllBinarySpriteRotationAnimationFactory! = AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.`init`(dx, dy)
        return spriteRotationAnimationFactory
    }
    

    @discardableResult open class func createDXYQ(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> AllBinarySpriteRotationAnimationFactory! {
        let spriteRotationAnimationFactory: AllBinarySpriteRotationAnimationFactory! = AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
        spriteRotationAnimationFactory.`init`(dx, dy)
        return spriteRotationAnimationFactory
    }
    

    @discardableResult open class func createQ(_ image: Image!, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> AllBinarySpriteRotationAnimationFactory! {
        return AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory)
    }
    

    @discardableResult open class func createWHF(_ image: Image!, _ animationBehaviorFactory: AnimationBehaviorFactory!) -> AllBinarySpriteRotationAnimationFactory! {
        return AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory)
    }
    

    public override init(_ image: Image!, _ sequenceArray: JArray<Int32>!, _ width: Int32, _ height: Int32, _ dx: Int32, _ dy: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory)
        self.initFields()
        if (animationBehaviorFactory === AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        }
    }
    

    open func `init`(_ dx: Int32, _ dy: Int32) {
        self.animationFactoryInitializationVisitor.dx = dx
        self.animationFactoryInitializationVisitor.dy = dy
    }
    

    fileprivate func initWH(_ dx: Int32, _ dy: Int32) {
        self.`init`(dx, dy)
        self.animationFactoryInitializationVisitor.dx = self.animationFactoryInitializationVisitor.dx &+ -self.animationFactoryInitializationVisitor.width / 5
        self.animationFactoryInitializationVisitor.dy = self.animationFactoryInitializationVisitor.dy &+ -self.animationFactoryInitializationVisitor.height / 5
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let sprite: Sprite! = self.animationFactorySpriteScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        if (self.animationFactoryInitializationVisitor.dx != 0 || self.animationFactoryInitializationVisitor.dy != 0) {
            return AllBinaryAdjustedSpriteRotationAnimation(sprite, self.getImage(), self.animationFactoryInitializationVisitor.dx, self.animationFactoryInitializationVisitor.dy, self.animationBehaviorFactory.getOrCreateInstance())
        } else {
            return AllBinarySpriteRotationAnimation(sprite, self.getImage(), self.animationBehaviorFactory.getOrCreateInstance())
        }
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return self.getInstance(0)
    }
}

