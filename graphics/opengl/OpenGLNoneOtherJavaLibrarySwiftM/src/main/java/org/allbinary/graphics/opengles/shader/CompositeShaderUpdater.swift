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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

open class CompositeShaderUpdater: ShaderUpdater {
    fileprivate static let instanceC: CompositeShaderUpdater! = CompositeShaderUpdater(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY)
    public var commonSeps: CommonSeps! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.commonSeps = CommonSeps.getInstance()
    }
    

    @discardableResult open override class func getInstance() -> CompositeShaderUpdater! {
        return CompositeShaderUpdater.instanceC
    }
    

    public init(_ uniformBlockArray: JArray<String?>!, _ uniformArray: JArray<String?>!, _ attributeArray: JArray<String?>!, _ attributeHandleArray: JArray<Int32>!) {
        super.init()
        self.initFields()
    }
    

    open func onSurfaceCreated(_ gl: GL10!, _ eglConfig: EGLConfig!, _ programHandle: Int32) {
    }
    

    open func onSurfaceDestroyed(_ gl: GL10!) {
    }
}

