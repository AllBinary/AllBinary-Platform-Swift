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

open class OpenGLESImageProperties: JObject {
    public var textureID: Int32 = 0
    public var scaleX: Float = 0.0
    public var scaleY: Float = 0.0
    public var scaleX2: Float = 0.0
    public var scaleY2: Float = 0.0
    public var angle: Int32 = 0
    public var redf: Float = 0.0
    public var greenf: Float = 0.0
    public var bluef: Float = 0.0
    public var alphaf: Float = 0.0

    private func initFields() {
    self.textureID = -1
    self.scaleX = 1.0
    self.scaleY = 1.0
    self.scaleX2 = 1.0
    self.scaleY2 = 1.0
    self.angle = 0
    self.redf = 1.0
    self.greenf = 1.0
    self.bluef = 1.0
    self.alphaf = 0.0
    }

    public override init() {
        super.init()
        self.initFields()
    }
}

