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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary

open class BaseSoundsFactory: JObject, SoundsFactoryInterface {
    fileprivate var initialized: Bool = false

    private func initFields() {
    self.initialized = false
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`() {
    }
    

    @discardableResult open func getSoundInterfaceArray() -> JArray<Sound?>! {
        return JArray<Sound?>(0, nil)
    }
    

    open func setInitialized(_ initialized: Bool) {
        self.initialized = initialized
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return self.initialized
    }
}

