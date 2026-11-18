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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class RendererStateFactory: JObject {
    fileprivate static let instance: RendererStateFactory! = RendererStateFactory()
    fileprivate var loaded: Bool = false
    fileprivate var surfaceChanged: Bool = false

    private func initFields() {
    self.loaded = false
    self.surfaceChanged = false
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> RendererStateFactory! {
        return RendererStateFactory.instance
    }
    

    open func setLoaded(_ loaded: Bool) {
        self.loaded = loaded
    }
    

    @discardableResult open func isLoaded() -> Bool {
        return self.loaded
    }
    

    open func setSurfaceChanged(_ initialized: Bool) {
        self.surfaceChanged = initialized
    }
    

    @discardableResult open func isSurfaceChanged() -> Bool {
        return self.surfaceChanged
    }
}

