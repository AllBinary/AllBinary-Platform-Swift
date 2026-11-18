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
// package org.allbinary.game

import J2SEForSwiftLibrary

open class NullIntermissionEnableListener: JObject, IntermissionEnableListenerInterface {
    fileprivate static let SINGLETON: IntermissionEnableListenerInterface! = NullIntermissionEnableListener()
    

    @discardableResult open class func getInstance() -> IntermissionEnableListenerInterface! {
        return NullIntermissionEnableListener.SINGLETON
    }
    

    public override init() {
        super.init()
    }
    

    open func notifyIntermission(_ enable: Bool) {
    }
}

