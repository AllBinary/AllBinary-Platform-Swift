/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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

open class ImageJ2MEScaleUtil: JObject {
    fileprivate static let instance: ImageJ2MEScaleUtil! = ImageJ2MEScaleUtil()
    

    @discardableResult open class func getInstance() -> ImageJ2MEScaleUtil! {
        return ImageJ2MEScaleUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func scaleArray(_ images: JArray<Image?>!, _ width: Int32, _ height: Int32) -> JArray<Image?>! {
        let scaledImages: JArray<Image?>! = JArray<Image?>(images.length, nil)
        do {
            var index: Int32 = images.length
            while (jPreDecrement(&index) >= 0) {
            scaledImages[index] = self.scale(images[index], width, height)
            }
        }
        return scaledImages
    }
    

    @discardableResult open func scale(_ image: Image!, _ width: Int32, _ height: Int32) -> Image! {
        let sourceWidth: Int32 = image.getWidth()
        let sourceHeight: Int32 = image.getHeight()
        let originalData: JArray<Int32>! = JArray<Int32>(image.getWidth() &* image.getHeight(), 0)
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight())
        let scaledData: JArray<Int32>! = JArray<Int32>(width &* height, 0)
        let heightRatioFactor: Int32 = (8 &* sourceHeight) / height
        let widthRatioFactor: Int32 = (8 &* sourceWidth) / width
        var scaledIndex: Int32 = scaledData.length &- 1
        var dx: Int32 = 0
        var dy: Int32 = 0
        do {
            var index: Int32 = height
            while (jPreDecrement(&index) >= 0) {
            dy = (index &* heightRatioFactor) >> 3
            do {
                var index2: Int32 = width
                while (jPreDecrement(&index2) >= 0) {
                dx = (index2 &* widthRatioFactor) >> 3
                scaledData[jPostDecrement(&scaledIndex)] = originalData[(sourceWidth &* dy) &+ dx]
                }
            }
            }
        }
        let scaledImage: Image! = Image.createRGBImage(scaledData, width, height, true)
        return scaledImage
    }
}

