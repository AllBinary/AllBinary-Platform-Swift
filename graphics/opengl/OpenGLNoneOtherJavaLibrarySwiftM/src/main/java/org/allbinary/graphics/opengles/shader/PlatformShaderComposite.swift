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
// import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory
// import org.allbinary.graphics.opengles.OpenGLProcessor

open class PlatformShaderComposite: ShaderComposite {
    

    public init(_ requiresOpenGLVersion: String!, _ shaderArray: JArray<Shader?>!, _ compositeShaderUpdater: CompositeShaderUpdater!, _ shaderInitializer: ShaderInitializer!, _ modelViewProjection: ModelViewProjection!, _ colorOpenGLProcessor: OpenGLProcessor!, _ vertexOpenGLProcessor: OpenGLProcessor!) {
        super.init(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance())
    }
}

