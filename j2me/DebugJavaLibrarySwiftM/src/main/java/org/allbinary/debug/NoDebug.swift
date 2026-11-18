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
// package org.allbinary.debug

import J2SEForSwiftLibrary

open class NoDebug: JObject, DebugInterface {
    fileprivate static var SINGLETON: DebugInterface! = NoDebug()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> DebugInterface! {
        return NoDebug.SINGLETON
    }
    

    open func start() {
    }
    

    open func stop() {
    }
    

    @discardableResult open func getMaxTime() -> Int64 {
        return 10000
    }
    

    @discardableResult open func getStartTime() -> Int64 {
        return 0
    }
    

    @discardableResult open func isRunning() -> Bool {
        return false
    }
}

