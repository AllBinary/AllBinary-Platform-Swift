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
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class AbstractArrayListPool: JObject, PoolInterface {
    public var commonStrings: CommonStrings! = nil
    public var buffers: BasicArrayList! = nil
    public var cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.buffers = BasicArrayListD()
    
    }
    

    public init(_ cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface!) {
        super.init()
        self.initFields()
        self.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
    }
    

    open func clear() {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func remove(_ key: JObject!) -> CacheableInterface! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func add(_ cacheableInterface: CacheableInterface!) {
        self.buffers.add((cacheableInterface as? JObject))
    }
    

    open func addArray(_ cacheableInterfaces: JArray<CacheableInterface?>!) {
        do {
            var index: Int32 = 0
            while (index < cacheableInterfaces.length) {
                defer { index &+= 1 }
            self.buffers.add((cacheableInterfaces[index] as? JObject))
            }
        }
    }
}

