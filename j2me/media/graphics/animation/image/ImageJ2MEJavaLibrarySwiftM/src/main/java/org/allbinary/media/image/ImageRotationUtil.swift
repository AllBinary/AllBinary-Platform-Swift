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
// import org.allbinary.graphics.Anchor

open class ImageRotationUtil: JObject {
    fileprivate static let instance: ImageRotationUtil! = ImageRotationUtil()
    fileprivate var anchor: Int32 = 0

    private func initFields() {
    self.anchor = Anchor.TOP_LEFT
    }
    

    @discardableResult open class func getInstance() -> ImageRotationUtil! {
        return ImageRotationUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func createRotatedImage(_ originalImage: Image!, _ rotationInDegrees: Int32) -> Image! {
        return originalImage
    }
}

