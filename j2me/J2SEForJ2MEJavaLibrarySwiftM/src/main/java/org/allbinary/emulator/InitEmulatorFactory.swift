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
// package org.allbinary.emulator

import J2SEForSwiftLibrary

open class InitEmulatorFactory: JObject {
    fileprivate static let instance: InitEmulatorFactory! = InitEmulatorFactory()
    fileprivate var initEmulator: Bool = false

    private func initFields() {
    self.initEmulator = false
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> InitEmulatorFactory! {
        return InitEmulatorFactory.instance
    }
    

    open func setInitEmulator(_ initEmulator: Bool) {
        self.initEmulator = initEmulator
    }
    

    @discardableResult open func isInitEmulator() -> Bool {
        return self.initEmulator
    }
}

