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
// package org.allbinary.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation

open class AnimationFrameToImageUtil: JObject {
    fileprivate static let instance: AnimationFrameToImageUtil! = AnimationFrameToImageUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> AnimationFrameToImageUtil! {
        return AnimationFrameToImageUtil.instance
    }
    

    @discardableResult open func getInstanceTranslate(_ width: Int32, _ height: Int32, _ animationInterface: Animation!) -> Image! {
        let image: Image! = GameFeatureImageCacheFactory.getInstance().get(JObject.className(AnimationFrameToImageUtil.instance), ((width &* 3) >> 1), ((height &* 3) >> 1))
        let graphics: Graphics! = image.getGraphics()
        let tranlateX: Int32 = (width >> 2)
        let tranlateY: Int32 = (height >> 2)
        graphics.translate(tranlateX, tranlateY)
        animationInterface.paintXY(graphics, 0, 0)
        graphics.translate(-tranlateX, -tranlateY)
        return image
    }
    

    @discardableResult open func getInstanceWH(_ width: Int32, _ height: Int32, _ animationInterface: Animation!) -> Image! {
        let image: Image! = GameFeatureImageCacheFactory.getInstance().get(JObject.className(AnimationFrameToImageUtil.instance), width, height)
        let graphics: Graphics! = image.getGraphics()
        animationInterface.paintXY(graphics, 0, 0)
        return image
    }
}

