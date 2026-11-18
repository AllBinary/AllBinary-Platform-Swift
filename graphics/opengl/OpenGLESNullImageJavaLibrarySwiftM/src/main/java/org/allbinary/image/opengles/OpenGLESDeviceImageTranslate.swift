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
// package org.allbinary.image.opengles

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10

open class OpenGLESDeviceImageTranslate: OpenGLESImageTranslate {
    public var translateX: Float = 0.0
    public var translateY: Float = 0.0
    public var translateX2: Float = 0.0
    public var translateY2: Float = 0.0

    // Each class has its own field initializers
    private func initFields() {
    self.translateX = 0.0
    self.translateY = 0.0
    self.translateX2 = 0.0
    self.translateY2 = 0.0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func translate(_ gl: GL10!, _ openGLESImage: OpenGLESImage!, _ x: Float, _ y: Float) {
        openGLESImage.imageProcessor.translate(gl, self.translateX + (openGLESImage.openGLESImageProperties.scaleX * x), self.translateY + (openGLESImage.openGLESImageProperties.scaleY * y))
    }
    

    open override func translate2(_ gl: GL10!, _ openGLESImage: OpenGLESImage!) {
        openGLESImage.imageProcessor.translate(gl, self.translateX2, self.translateY2)
    }
}

