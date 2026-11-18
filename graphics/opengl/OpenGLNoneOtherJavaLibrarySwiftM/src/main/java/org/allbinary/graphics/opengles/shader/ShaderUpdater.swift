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
// import javax.microedition.khronos.egl.EGLConfig
// import javax.microedition.khronos.opengles.GL10
// import org.allbinary.graphics.opengles.renderer.RendererStrings
// import org.allbinary.string.CommonStrings

open class ShaderUpdater: JObject {
    fileprivate static let instance: ShaderUpdater! = ShaderUpdater()
    public var commonStrings: CommonStrings! = nil
    public var rendererStrings: RendererStrings! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.rendererStrings = RendererStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ShaderUpdater! {
        return ShaderUpdater.instance
    }
    

    open func onSurfaceCreated(_ gl: GL10!, _ eglConfig: EGLConfig!) {
    }
}

