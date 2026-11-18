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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import java.io.IOException
// import java.io.InputStream
// import org.allbinary.graphics.OpenGLBitmap
// import org.allbinary.graphics.color.BasicColor

open class OpenGLImageUtilBase: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open func paint(_ alphaBitmap: OpenGLBitmap!, _ originalBitmap: OpenGLBitmap!, _ index: Int32) -> OpenGLBitmap! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func paint(_ colorBitmap: OpenGLBitmap!, _ originalBitmap: OpenGLBitmap!, _ alpha: Int32, _ basicColor: BasicColor!) -> OpenGLBitmap! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func createImage(_ name: String!) -> OpenGLBitmap! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func createImageFromInputStream(_ inputStream: InputStream!) -> OpenGLBitmap! {
        jThrow(JException("RuntimeException", ""))
    }
}

