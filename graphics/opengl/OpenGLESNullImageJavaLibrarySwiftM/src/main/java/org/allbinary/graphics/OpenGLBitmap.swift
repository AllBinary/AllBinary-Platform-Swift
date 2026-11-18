// Generated Code Do Not Modify
// package org.allbinary.graphics

import J2SEForSwiftLibrary
// import org.allbinary.platform.graphics.PlatformBitmapBase

open class OpenGLBitmap: PlatformBitmapBase {
    public var bitmap: JObject! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ bitmap: JObject!) {
        super.init()
        self.initFields()
        self.bitmap = bitmap
    }
    

    open func getPixels(_ pixels: JArray<Int32>!, _ offset: Int32, _ stride: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32) {
    }
    

    open func setPixels(_ pixels: JArray<Int32>!, _ offset: Int32, _ stride: Int32, _ x: Int32, _ y: Int32, _ width: Int32, _ height: Int32) {
    }
    

    open func recycle() {
    }
}

