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
// import javax.microedition.media.Player
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.caption.CaptionIndexedAnimation
// import org.allbinary.animation.image.ImageAnimation
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.image.AnimationFactoryImageScaleUtil
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.audio.Sound

open class ImageCaptionIndexedAnimationFactory: JObject, AnimationInterfaceFactoryInterface {
    public var animationFactoryImageScaleUtil: AnimationFactoryImageScaleUtil! = nil
    fileprivate var animationFactorySpriteScaleUtil: AnimationFactorySpriteScaleUtil! = nil
    fileprivate var captionImage: Image! = nil
    fileprivate var spriteMovieImage: Image! = nil
    fileprivate var frameWidth: Int32 = 0
    fileprivate var frameHeight: Int32 = 0
    fileprivate var captionDx: Int32 = 0
    fileprivate var captionDy: Int32 = 0
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0
    fileprivate var time: Int32 = 0
    fileprivate var soundInterface: Sound! = nil
    public var scaleProperties: ScaleProperties! = nil
    fileprivate var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    self.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
    self.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    self.scaleProperties = ScaleProperties.instance
    
    }
    

    public init(_ captionImage: Image!, _ spriteMovieImage: Image!, _ soundInterface: Sound!, _ frameWidth: Int32, _ frameHeight: Int32, _ captionDx: Int32, _ captionDy: Int32, _ dx: Int32, _ dy: Int32, _ time: Int32, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        if (animationBehaviorFactory === AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self)
        }
        self.captionImage = captionImage
        self.spriteMovieImage = spriteMovieImage
        self.frameWidth = frameWidth
        self.frameHeight = frameHeight
        self.captionDx = captionDx
        self.captionDy = captionDy
        self.dx = dx
        self.dy = dy
        self.time = time
        self.soundInterface = soundInterface
        self.animationBehaviorFactory = animationBehaviorFactory
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        let scaledImage: Image! = self.animationFactoryImageScaleUtil.createImage(self.captionImage, self.captionImage.getWidth(), self.captionImage.getHeight(), self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        let animationInterface: Animation! = ImageAnimation(scaledImage, self.animationBehaviorFactory.getOrCreateInstance())
        let sprite: Sprite! = self.animationFactorySpriteScaleUtil.createImage(self.spriteMovieImage, self.frameWidth, self.frameHeight, self.scaleProperties.scaleWidth, self.scaleProperties.scaleHeight)
        let movieIndexedAnimationInterface: IndexedAnimation! = SpriteIndexedAnimation(sprite, self.spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, self.animationBehaviorFactory.getOrCreateInstance())
        let player: Player! = self.soundInterface.getPlayerP()
        if (player == nil) {
            jThrow(JException("Exception", "Sound Was not Initialized"))
        }
        return CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, self.captionDx, self.captionDy, self.dx, self.dy, self.time, self.animationBehaviorFactory.getOrCreateInstance())
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
        self.scaleProperties = scaleProperties
    }
}

