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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

open class ColorCompositeSpriteIndexedAnimationFactory: BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var animationFactorySpriteScaleUtil: AnimationFactorySpriteScaleUtil! = nil
    fileprivate var basicColorArray: JArray<BasicColor?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    
    }
    

    public init(_ image: Image!, _ basicColorArray: JArray<BasicColor?>!, _ width: Int32, _ height: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        self.initFields()
        self.basicColorArray = basicColorArray
    }
    

    @discardableResult open override func getInstance(_ instanceId: Int32) -> Animation! {
        let sprite: Sprite! = self.animationFactorySpriteScaleUtil.createImage(self.getImage(), self.animationFactoryInitializationVisitor.width, self.animationFactoryInitializationVisitor.height, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        return SpriteIndexedAnimation(sprite, self.getImage(), self.basicColorArray, self.animationBehaviorFactory.getOrCreateInstance())
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return self.getInstance(0)
    }
}

