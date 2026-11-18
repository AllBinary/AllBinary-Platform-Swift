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
// package org.allbinary.platform.graphics

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Image

open class PlatformBitmapBaseFactory: JObject {
    public static let NULL_PLATFORM_BITMAP_BASE_FACTORY: PlatformBitmapBaseFactory! = PlatformBitmapBaseFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open func createBitmap(_ image: Image!) -> PlatformBitmapBase! {
        jThrow(JException("RuntimeException", ""))
    }
}

