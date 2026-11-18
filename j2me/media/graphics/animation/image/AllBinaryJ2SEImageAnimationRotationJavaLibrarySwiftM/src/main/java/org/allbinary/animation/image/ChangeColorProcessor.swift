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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.media.image.ImageModifierUtil

open class ChangeColorProcessor: ModifierBaseProcessor {
    fileprivate static let instanceC: ChangeColorProcessor! = ChangeColorProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open override class func getInstance() -> ChangeColorProcessor! {
        return ChangeColorProcessor.instanceC
    }
    

    open override func updateColor(_ imageModifierUtil: ImageModifierUtil!, _ originalImage: Image!, _ imageToShow: Image!, _ index: Int32, _ basicColor: BasicColor!) {
        imageModifierUtil.changeColor(originalImage, imageToShow, index, basicColor)
    }
}

