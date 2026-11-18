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
// package org.allbinary.media.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.graphics.color.BasicColor

open class ImageModifierUtil: JObject {
    fileprivate static let instance: ImageModifierUtil! = ImageModifierUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstanceOrCreate() -> ImageModifierUtil! {
        return ImageModifierUtil.instance
    }
    

    open func setColor(_ unusedOriginalImage: Image!, _ image: Image!, _ imageIndex: Int32, _ basicColor: BasicColor!) {
    }
    

    open func changeColor(_ unusedOriginalImage: Image!, _ image: Image!, _ imageIndex: Int32, _ basicColor: BasicColor!) {
    }
    

    open func setAlpha(_ originalImage: Image!, _ image: Image!, _ imageIndex: Int32, _ alphaInt: Int32) {
    }
    

    @discardableResult open func getImageArray(_ originalImageArray: JArray<Image?>!) -> JArray<Image?>! {
        return originalImageArray
    }
    

    open func handleImage(_ imageArray: JArray<Image?>!, _ index: Int32, _ image: Image!) {
    }
    

    open func reset() {
    }
}

