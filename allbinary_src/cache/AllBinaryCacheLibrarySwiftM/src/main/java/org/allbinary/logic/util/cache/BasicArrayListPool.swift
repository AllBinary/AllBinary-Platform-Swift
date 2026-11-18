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
// import org.allbinary.util.BasicArrayList

open class BasicArrayListPool: AbstractArrayListPool {
    

    public override init(_ cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface!) {
        super.init(cacheableInterfaceFactoryInterface)
    }
    

    open override func clear() {
        self.buffers.clear()
    }
    

    @discardableResult open override func remove(_ key: JObject!) -> CacheableInterface! {
        let size: Int32 = self.buffers.size()
        if (size > 0) {
            return (self.buffers.removeAt(size &- 1) as! CacheableInterface)
        } else {
            return self.cacheableInterfaceFactoryInterface.getInstance(key)
        }
    }
    

    open func addAll(_ usedList: BasicArrayList!) {
        do {
            var index: Int32 = usedList.size()
            while (jPreDecrement(&index) >= 0) {
            let anyType: CacheableInterface! = (usedList.objectArray[index] as! CacheableInterface)
            self.add(anyType)
            }
        }
        usedList.clear()
    }
    

    open func releaseUsedBackToPool(_ usedList: BasicArrayList!) {
        do {
            var index: Int32 = usedList.size()
            while (jPreDecrement(&index) >= 0) {
            let list: BasicArrayListCacheable! = (usedList.objectArray[index] as! BasicArrayListCacheable)
            if (list.size() == 0) {
                usedList.removeAt(index)
                self.add(list)
            }
            }
        }
    }
}

