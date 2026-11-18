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
// package org.allbinary.graphics.opengles.shader

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10
// import org.allbinary.string.CommonStrings

open class ShaderInitializer: JObject {
    fileprivate static let instance: ShaderInitializer! = ShaderInitializer()
    public var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ShaderInitializer! {
        return ShaderInitializer.instance
    }
    

    @discardableResult open func `init`(_ gl: GL10!, _ shader: JArray<Shader?>!, _ attributeArray: JArray<String?>!) -> Int32 {
        return -1
    }
}

