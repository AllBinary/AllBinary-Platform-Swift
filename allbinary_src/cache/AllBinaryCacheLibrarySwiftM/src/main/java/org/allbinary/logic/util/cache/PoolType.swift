/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

open class PoolType: JObject {
    fileprivate var cacheType: CacheType! = nil

    private func initFields() {
    
    }
    

    public init(_ cacheType: CacheType!) {
        super.init()
        self.initFields()
        self.cacheType = cacheType
    }
    

    @discardableResult open func getCacheType() -> CacheType! {
        return self.cacheType
    }
    

    @discardableResult open override func toString() -> String! {
        let POOL_TYPE: String! = "PoolType: "
        return jstr(POOL_TYPE) + jstr(self.getCacheType().toString())
    }
}

