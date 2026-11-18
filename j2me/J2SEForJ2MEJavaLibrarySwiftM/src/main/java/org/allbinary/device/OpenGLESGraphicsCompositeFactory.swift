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
// package org.allbinary.device

import J2SEForSwiftLibrary

open class OpenGLESGraphicsCompositeFactory: JObject {
    fileprivate static let instance: OpenGLESGraphicsCompositeFactory! = OpenGLESGraphicsCompositeFactory()
    fileprivate var openGLESGraphicsFactory: OpenGLESGraphicsFactory! = nil

    private func initFields() {
    self.openGLESGraphicsFactory = OpenGLESGraphicsFactory()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> OpenGLESGraphicsCompositeFactory! {
        return OpenGLESGraphicsCompositeFactory.instance
    }
    

    open func set(_ openGLESGraphicsFactory: OpenGLESGraphicsFactory!) {
        self.openGLESGraphicsFactory = openGLESGraphicsFactory
    }
    

    @discardableResult open func get() -> OpenGLESGraphicsFactory! {
        return self.openGLESGraphicsFactory
    }
}

