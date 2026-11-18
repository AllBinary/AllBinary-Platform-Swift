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
// package org.allbinary.logic.system.security.licensing

import J2SEForSwiftLibrary

open class LockedUtil: JObject, LockedUtilInterface {
    fileprivate static let instance: LockedUtil! = LockedUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> LockedUtil! {
        return LockedUtil.instance
    }
    

    @discardableResult open func isLocked() -> Bool {
        return true
    }
    

    @discardableResult open func isLockedFeature(_ lockableFeatrue: LockableFeature!) -> Bool {
        return true
    }
}

