// Generated Code Do Not Modify
// package org.allbinary.device

import J2SEForSwiftLibrary

open class OpenGLESNullGraphicsFactory: JObject {
    fileprivate static let instance: OpenGLESGraphics! = OpenGLESGraphics()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> OpenGLESGraphics! {
        return OpenGLESNullGraphicsFactory.instance
    }
}

