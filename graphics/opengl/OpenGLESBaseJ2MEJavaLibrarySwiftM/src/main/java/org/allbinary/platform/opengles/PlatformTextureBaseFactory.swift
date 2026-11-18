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
// package org.allbinary.platform.opengles

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import org.allbinary.string.CommonStrings

open class PlatformTextureBaseFactory: JObject {
    public static let NULL_PLATFORM_TEXTURE_BASE_FACTORY: PlatformTextureBaseFactory! = PlatformTextureBaseFactory()
    public var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func load(_ gl: GL10!, _ target: Int32, _ level: Int32, _ image: Image!, _ border: Int32, _ flip: Bool) {
    }
}

