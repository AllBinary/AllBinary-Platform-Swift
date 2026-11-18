// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

import J2SEForSwiftLibrary

open class NullOpenGLProcessorFactory: JObject {
    fileprivate static let instance: OpenGLProcessor! = OpenGLProcessor()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> OpenGLProcessor! {
        return NullOpenGLProcessorFactory.instance
    }
}

