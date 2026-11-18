/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import java.io.InputStream
// import javax.microedition.lcdui.Image
// import org.allbinary.MIDPUtil

//ImageCacheBaseJavaLibrary - J2ME
open class ImageFactory: JObject {
    fileprivate static let instance: ImageFactory! = ImageFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ImageFactory! {
        return ImageFactory.instance
    }
    

    @discardableResult open func createImageUrl(_ url: String!) -> Image! {
        return Image.createImage(url)
    }
    

    @discardableResult open func createImage(_ caller: String!, _ width: Int32, _ height: Int32) -> Image! {
        return MIDPUtil.getInstance().createImageWH(width, height)
    }
    

    @discardableResult open func createImageFromInputStream(_ key: JObject!, _ inputStream: InputStream!) -> Image! {
        let image: Image! = MIDPUtil.getInstance().createImageFromInputStream(inputStream)
        return image
    }
    

    @discardableResult open func createImageFromInputStream(_ inputStream: InputStream!) -> Image! {
        return MIDPUtil.getInstance().createImageFromInputStream(inputStream)
    }
}

