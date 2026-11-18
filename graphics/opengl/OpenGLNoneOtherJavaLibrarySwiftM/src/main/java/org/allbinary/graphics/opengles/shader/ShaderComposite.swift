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
// import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory
// import org.allbinary.graphics.opengles.OpenGLProcessor
// import org.allbinary.logic.string.StringUtil

open class ShaderComposite: JObject {
    public var disableProgramShaderOpenGLProcessor: OpenGLProcessor! = nil
    public var requiresOpenGLVersion: String! = nil
    public var shaderArray: JArray<Shader?>! = nil
    public var shaderInitializer: ShaderInitializer! = nil
    public var compositeShaderUpdater: CompositeShaderUpdater! = nil
    public var modelViewProjection: ModelViewProjection! = nil
    public var colorOpenGLProcessor: OpenGLProcessor! = nil
    public var vertexOpenGLProcessor: OpenGLProcessor! = nil
    public var useProgramShaderOpenGLProcessor: OpenGLProcessor! = nil
    public var shaderMatrixOpenGLProcessor: OpenGLProcessor! = nil
    public var colorEnableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var normalEnableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var vertexEnableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var textureEnableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var colorDisableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var normalDisableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var vertexDisableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var textureDisableVertexAttribArrayOpenGLProcessor: OpenGLProcessor! = nil
    public var uniformLightPositionOpenGLProcessor: OpenGLObject3dProcessor! = nil
    public var uniformLightColorOpenGLProcessor: OpenGLObject3dProcessor! = nil
    public var uniformCameraPositionOpenGLProcessor: OpenGLObject3dProcessor! = nil
    public var uniformTextureUnitOpenGLProcessor: OpenGLObject3dProcessor! = nil
    public var programHandle: Int32 = 0

    private func initFields() {
    
    
    
    
    
    
    
    
    self.useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
    self.uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    self.uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    self.uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    self.uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
    self.programHandle = 0
    }
    

    public init(_ requiresOpenGLVersion: String!, _ shaderArray: JArray<Shader?>!, _ compositeShaderUpdater: CompositeShaderUpdater!, _ shaderInitializer: ShaderInitializer!, _ modelViewProjection: ModelViewProjection!, _ colorOpenGLProcessor: OpenGLProcessor!, _ vertexOpenGLProcessor: OpenGLProcessor!, _ disableProgramShaderOpenGLProcessor: OpenGLProcessor!) {
        super.init()
        self.initFields()
        self.requiresOpenGLVersion = requiresOpenGLVersion
        self.shaderArray = shaderArray
        self.shaderInitializer = shaderInitializer
        self.compositeShaderUpdater = compositeShaderUpdater
        self.modelViewProjection = modelViewProjection
        self.colorOpenGLProcessor = colorOpenGLProcessor
        self.vertexOpenGLProcessor = vertexOpenGLProcessor
        self.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor
    }
    

    open func `init`(_ gl: GL10!) {
        self.programHandle = self.shaderInitializer.`init`(gl, self.shaderArray, StringUtil.getInstance().getArrayInstance())
    }
}

