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

open class OpenGLFeatureUtil: JObject {
    fileprivate static let instance: OpenGLFeatureUtil! = OpenGLFeatureUtil()
    

    @discardableResult open class func getInstance() -> OpenGLFeatureUtil! {
        return OpenGLFeatureUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func isAnyThreed() -> Bool {
        return false
    }
}

