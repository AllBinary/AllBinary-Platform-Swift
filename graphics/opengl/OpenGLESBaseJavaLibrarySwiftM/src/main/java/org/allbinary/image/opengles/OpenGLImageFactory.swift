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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image
// import org.allbinary.platform.graphics.PlatformBitmapBaseFactory
// import org.allbinary.platform.opengles.PlatformTextureBaseFactory

open class OpenGLImageFactory: JObject {
    public static var NULL_OPENGL_IMAGE_FACTORY: OpenGLImageFactory! = OpenGLImageFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance(_ image: Image!, _ bitmapFactory: PlatformBitmapBaseFactory!, _ textureFactory: PlatformTextureBaseFactory!) -> Image! {
        jThrow(JException("RuntimeException", ""))
    }
}

