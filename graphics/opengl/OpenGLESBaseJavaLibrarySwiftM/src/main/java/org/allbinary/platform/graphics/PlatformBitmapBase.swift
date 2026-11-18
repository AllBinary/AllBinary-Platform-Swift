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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory

open class PlatformBitmapBase: JObject {
    public static let NULL_PLATFORM_BITMAP_BASE: PlatformBitmapBase! = PlatformBitmapBase()
    public var alpha: Int32 = 0
    public var basicColor: BasicColor! = nil

    private func initFields() {
    self.alpha = 255
    self.basicColor = BasicColorFactory.getInstance().NULL_COLOR
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return 0
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return 0
    }
    

    @discardableResult open func getImage() -> Image! {
        return NullImage.NULL_IMAGE
    }
}

