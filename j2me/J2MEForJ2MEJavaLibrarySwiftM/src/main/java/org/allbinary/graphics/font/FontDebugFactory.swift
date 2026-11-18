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
// package org.allbinary.graphics.font

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics

open class FontDebugFactory: JObject {
    fileprivate static let instance: FontDebugFactory! = FontDebugFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> FontDebugFactory! {
        return FontDebugFactory.instance
    }
    

    open func setFont(_ font: Font!, _ graphics: Graphics!) {
        graphics.setFont(font)
    }
}

