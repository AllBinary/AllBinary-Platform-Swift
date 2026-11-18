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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image

open class ScaleBaseProcessor: JObject {
    fileprivate static let instance: ScaleBaseProcessor! = ScaleBaseProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ScaleBaseProcessor! {
        return ScaleBaseProcessor.instance
    }
    

    open func update(_ originalImage: Image!, _ originalImageArray: JArray<Image?>!, _ imageToShowArray: JArray<Image?>!, _ index: Int32, _ scaleX: Float, _ scaleY: Float, _ maxScaleX: Float, _ maxScaleY: Float) {
    }
}

