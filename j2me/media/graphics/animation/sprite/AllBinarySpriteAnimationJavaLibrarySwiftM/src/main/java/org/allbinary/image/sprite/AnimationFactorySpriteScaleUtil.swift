/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.image.sprite

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.game.layer.SpriteFactory
// import org.allbinary.graphics.opengles.OpenGLUtil
// import org.allbinary.image.ImageCache
// import org.allbinary.image.ImageCacheFactory
// import org.allbinary.image.opengles.OpenGLESImageExclusionUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.J2SEMath
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.image.ImageScaleUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class AnimationFactorySpriteScaleUtil: JObject {
    fileprivate static let instance: AnimationFactorySpriteScaleUtil! = AnimationFactorySpriteScaleUtil()
    fileprivate var imageCache: ImageCache! = nil
    fileprivate var imageScaleUtil: ImageScaleUtil! = nil
    fileprivate var openGLUtil: OpenGLUtil! = nil
    fileprivate var j2seMath: J2SEMath! = nil
    fileprivate var openGLESImageExclusionUtil: OpenGLESImageExclusionUtil! = nil

    private func initFields() {
    self.imageCache = ImageCacheFactory.getInstance()
    self.imageScaleUtil = ImageScaleUtil.getInstance()
    self.openGLUtil = OpenGLUtil.getInstance()
    self.j2seMath = J2SEMath.getInstance()
    self.openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AnimationFactorySpriteScaleUtil! {
        return AnimationFactorySpriteScaleUtil.instance
    }
    

    @discardableResult open func createImage(_ image: Image!, _ width: Int32, _ height: Int32, _ scaleWidth: Int32, _ scaleHeight: Int32) -> Sprite! {
        let spriteFactory: SpriteFactory! = SpriteFactory.getInstance()
        var sprite: Sprite! = nil
        var scaledImage: Image! = nil
        if (scaleWidth != 0 && scaleHeight != 0) {
            var scaleX: Float = (Float(scaleWidth)) / (Float(width))
            var scaleY: Float = (Float(scaleHeight)) / (Float(height))
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
                scaledImage = self.openGLUtil.addImage(image)
                sprite = spriteFactory.createSprite(scaledImage, width, height)
            } else {
                if (self.openGLESImageExclusionUtil.isCustomScaling(image)) {
                    let width2: Int32 = self.j2seMath.round(Float((scaleWidth)) - 0.5)
                    let height2: Int32 = self.j2seMath.round(Float((scaleHeight)) - 0.5)
                    let multiplesOf16Width: Int32 = width2 / 16
                    let by16Width: Int32 = multiplesOf16Width &* 16
                    scaleX = (Float(by16Width)) / Float(width)
                    let multiplesOf16Height: Int32 = height2 / 16
                    let by16Height: Int32 = multiplesOf16Height &* 16
                    scaleY = (Float(by16Height)) / Float(height)
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35
                    }
                }
                scaledImage = self.imageScaleUtil.createImage2(self.imageCache, image, scaleX, 1.0, scaleY, 1.0, true)
                sprite = spriteFactory.createSprite(scaledImage, JMath.toInt32(Double((Float(width) * scaleX))), JMath.toInt32(Double((Float(height) * scaleY))))
            }
        } else {
            scaledImage = self.openGLUtil.addImage(image)
            sprite = spriteFactory.createSprite(scaledImage, width, height)
        }
        return sprite
    }
}

