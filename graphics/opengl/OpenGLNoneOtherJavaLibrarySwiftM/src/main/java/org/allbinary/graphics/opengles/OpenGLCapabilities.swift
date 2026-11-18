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
// package org.allbinary.graphics.opengles

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class OpenGLCapabilities: JObject {
    fileprivate static let instance: OpenGLCapabilities! = OpenGLCapabilities()
    public var CUSTOM_GL_SURFACE_VIEW: Bool = false
    public var VERSION_1_0: String! = nil
    public var VERSION_1_1: String! = nil
    public var VERSION_2_0: String! = nil
    public var VERSION_3_0: String! = nil
    public var VERSION_3_1: String! = nil
    public var VERSION_3_2: String! = nil
    public var VERSION_HIGHER_THAN_EXISTS: String! = nil
    fileprivate var glVersion: String! = nil
    public var shaderVersion: Int32 = 0
    public var glInstanceVersion: String! = nil
    public var maxTextureSize: Int32 = 0

    private func initFields() {
    self.CUSTOM_GL_SURFACE_VIEW = true
    self.VERSION_1_0 = "1.0"
    self.VERSION_1_1 = "1.1"
    self.VERSION_2_0 = "2.0"
    self.VERSION_3_0 = "3.0"
    self.VERSION_3_1 = "3.1"
    self.VERSION_3_2 = "3.2"
    self.VERSION_HIGHER_THAN_EXISTS = "999.999"
    self.glVersion = StringUtil.getInstance().EMPTY_STRING
    self.shaderVersion = 0
    self.glInstanceVersion = StringUtil.getInstance().EMPTY_STRING
    self.maxTextureSize = 64
    }
    

    @discardableResult open class func getInstance() -> OpenGLCapabilities! {
        return OpenGLCapabilities.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return true
    }
    

    open func initCapabilities(_ gl: JObject!) {
    }
    

    @discardableResult open func isGlExtensionDrawTexture() -> Bool {
        return false
    }
    

    @discardableResult open func getGlVersion() -> String! {
        return self.glVersion
    }
    

    @discardableResult open func isVertexBufferObjectSupport() -> Bool {
        return false
    }
    

    @discardableResult open func isTextureSizeValid(_ widthAndHeight: Int32) -> Bool {
        return true
    }
}

