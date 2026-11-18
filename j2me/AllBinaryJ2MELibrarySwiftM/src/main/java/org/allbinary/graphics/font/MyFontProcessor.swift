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
// package org.allbinary.graphics.font

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics

open class MyFontProcessor: JObject {
    fileprivate static let instance: MyFontProcessor! = MyFontProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func defaultCharWidth(_ font: Font!) -> Int32 {
        return font.charWidth(UInt16(("C" as Unicode.Scalar).value))
    }
    

    @discardableResult open class func defaultStringWidth(_ font: Font!, _ size: Int32) -> Int32 {
        return MyFontProcessor.defaultCharWidth(font) * size
    }
    

    @discardableResult open class func getInstance() -> MyFontProcessor! {
        return MyFontProcessor.instance
    }
    

    open func process(_ graphics: Graphics!) {
    }
}

