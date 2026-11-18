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

open class ImageToRotationImageArrayUtil: JObject {
    fileprivate static let instance: ImageToRotationImageArrayUtil! = ImageToRotationImageArrayUtil()
    

    @discardableResult open class func getInstance() -> ImageToRotationImageArrayUtil! {
        return ImageToRotationImageArrayUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func generate(_ image: Image!, _ angleIncrement: Int32, _ totalAngle: Int32) -> JArray<Image?>! {
        let imageRotationUtil: ImageRotationUtil! = ImageRotationUtil.getInstance()
        let totalFrames: Int32 = totalAngle / angleIncrement
        let imageArray: JArray<Image?>! = JArray<Image?>(totalFrames, nil)
        imageArray[0] = image
        do {
            var index: Int32 = 1
            while (index < totalFrames) {
                defer { index &+= 1 }
            imageArray[index] = imageRotationUtil.createRotatedImage(image, index &* angleIncrement)
            }
        }
        return imageArray
    }
}

