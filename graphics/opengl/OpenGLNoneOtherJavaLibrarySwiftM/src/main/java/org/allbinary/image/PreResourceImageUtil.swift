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
// package org.allbinary.image

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image

open class PreResourceImageUtil: JObject {
    fileprivate static let instance: PreResourceImageUtil! = PreResourceImageUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PreResourceImageUtil! {
        return PreResourceImageUtil.instance
    }
    

    @discardableResult open func encapsulate(_ image: Image!) -> Image! {
        return image
    }
    

    open func updateGL(_ gl: GL!, _ image: Image!) {
    }
    

    open func update(_ graphics: Graphics!, _ image: Image!) {
    }
}

