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
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary

open class BasicArrayListResetablePool: AbstractArrayListPool {
    

    public override init(_ cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface!) {
        super.init(cacheableInterfaceFactoryInterface)
    }
    

    open override func clear() {
    }
    

    @discardableResult open override func remove(_ key: JObject!) -> CacheableInterface! {
        let size: Int32 = self.buffers.size()
        if (size > 0) {
            return (self.buffers.removeAt(size &- 1) as! CacheableInterface)
        } else {
            return self.cacheableInterfaceFactoryInterface.getInstance(key)
        }
    }
}

