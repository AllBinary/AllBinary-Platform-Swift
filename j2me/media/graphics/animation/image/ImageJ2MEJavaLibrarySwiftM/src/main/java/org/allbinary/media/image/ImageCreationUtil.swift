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
// package org.allbinary.media.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.image.GameFeatureImageCacheFactory

open class ImageCreationUtil: JObject {
    fileprivate static let instance: ImageCreationUtil! = ImageCreationUtil()
    

    @discardableResult open class func getInstance() -> ImageCreationUtil! {
        return ImageCreationUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func createImageWH(_ width: Int32, _ height: Int32) -> Image! {
        let image: Image! = GameFeatureImageCacheFactory.getInstance().get(JObject.className(self), width, height)
        return image
    }
    

    @discardableResult open func createImage(_ width: Int32, _ height: Int32, _ maxScaleX: Float, _ maxScaleY: Float) -> Image! {
        let image: Image! = GameFeatureImageCacheFactory.getInstance().get(JObject.className(self), JMath.toInt32(Double((Float(width) * maxScaleX))) &+ 1, JMath.toInt32(Double((Float(height) * maxScaleY))) &+ 1)
        return image
    }
}

