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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10

open class OpenGLESImageProcessor: JObject {
    fileprivate static let instance: OpenGLESImageProcessor! = OpenGLESImageProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> OpenGLESImageProcessor! {
        return OpenGLESImageProcessor.instance
    }
    

    open func translate(_ gl: GL10!, _ translateX: Float, _ translateY: Float) {
    }
    

    open func rotate(_ gl: GL10!, _ angle: Float) {
    }
    

    open func scale(_ gl: GL10!, _ scaleX: Float, _ scaleY: Float) {
    }
    

    open func colorMask(_ gl: GL10!, _ red: Float, _ green: Float, _ blue: Float, _ alpha: Float) {
    }
}

