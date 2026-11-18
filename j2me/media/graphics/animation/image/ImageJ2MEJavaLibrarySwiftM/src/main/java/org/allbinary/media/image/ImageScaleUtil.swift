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
// import org.allbinary.image.ImageCache

open class ImageScaleUtil: JObject {
    fileprivate static let instance: ImageScaleUtil! = ImageScaleUtil()
    

    @discardableResult open class func getInstance() -> ImageScaleUtil! {
        return ImageScaleUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func createImage2(_ imageCache: ImageCache!, _ originalImage: Image!, _ scaleNominatorX: Float, _ scaleDenominatorX: Float, _ scaleNominatorY: Float, _ scaleDenominatorY: Float, _ cached: Bool) -> Image! {
        return self.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true)
    }
    

    @discardableResult open func createImage3(_ imageCache: ImageCache!, _ originalImage: Image!, _ scaleNominatorX: Float, _ scaleDenominatorX: Float, _ scaleNominatorY: Float, _ scaleDenominatorY: Float, _ cached: Bool, _ mutable: Bool) -> Image! {
        return originalImage
    }
}

