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
// import org.allbinary.media.image.ImageModifierUtil

open class AlphaProcessor: ModifierBaseProcessor {
    fileprivate static let instanceC: AlphaProcessor! = AlphaProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open override class func getInstance() -> AlphaProcessor! {
        return AlphaProcessor.instanceC
    }
    

    open override func updateAlpha(_ imageModifierUtil: ImageModifierUtil!, _ originalImage: Image!, _ imageToShow: Image!, _ index: Int32, _ alpha: Int32) {
        imageModifierUtil.setAlpha(originalImage, imageToShow, index, alpha)
    }
}

