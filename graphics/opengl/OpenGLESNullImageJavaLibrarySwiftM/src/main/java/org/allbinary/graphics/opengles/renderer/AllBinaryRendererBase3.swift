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
// package org.allbinary.graphics.opengles.renderer

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import org.allbinary.image.opengles.OpenGLESImage
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class AllBinaryRendererBase3: JObject {
    public var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func update(_ gl: GL10!) {
        while (self.list.size() > 0) {
            let openGLESImage: OpenGLESImage! = (self.list.removeAt(0) as! OpenGLESImage)
            if (openGLESImage != nil) {
                openGLESImage.set(gl)
            }
        }
    }
    

    open func add(_ image: Image!) {
        self.list.add(image)
    }
}

