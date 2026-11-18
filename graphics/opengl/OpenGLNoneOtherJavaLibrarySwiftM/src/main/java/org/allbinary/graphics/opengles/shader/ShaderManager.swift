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
// import org.allbinary.util.BasicArrayList

open class ShaderManager: JObject {
    fileprivate static let instance: ShaderManager! = ShaderManager(-1, -1)
    public var LOAD_SHADER: String! = nil
    public var commonStrings: CommonStrings! = nil
    public var GL_VERTEX_SHADER: Int32 = 0
    public var GL_FRAGMENT_SHADER: Int32 = 0

    private func initFields() {
    self.LOAD_SHADER = "loadShader"
    self.commonStrings = CommonStrings.getInstance()
    
    
    }
    

    @discardableResult open class func getInstance() -> ShaderManager! {
        return ShaderManager.instance
    }
    

    public init(_ GL_VERTEX_SHADER: Int32, _ GL_FRAGMENT_SHADER: Int32) {
        super.init()
        self.initFields()
        self.GL_VERTEX_SHADER = GL_VERTEX_SHADER
        self.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER
    }
    

    @discardableResult open func load(_ gl: GL10!, _ resource: String!, _ shaderAsStringArray: JArray<String?>!, _ shaderType: Int32) -> Int32 {
        return -1
    }
    

    @discardableResult open func loadShader(_ gl: GL10!, _ resource: String!, _ stringList: BasicArrayList!, _ shaderType: Int32) -> Int32 {
        return -1
    }
}

