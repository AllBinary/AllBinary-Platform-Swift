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

open class ShaderManagerFactory: JObject {
    fileprivate static let instance: ShaderManagerFactory! = ShaderManagerFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ShaderManagerFactory! {
        return ShaderManagerFactory.instance
    }
    

    @discardableResult open func create() -> ShaderManager! {
        return ShaderManager.getInstance()
    }
}

