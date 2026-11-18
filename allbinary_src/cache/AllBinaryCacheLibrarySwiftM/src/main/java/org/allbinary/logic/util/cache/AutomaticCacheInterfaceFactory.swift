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

open class AutomaticCacheInterfaceFactory: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance(_ cacheableInterfaceFactoryInterface: CacheableInterfaceFactoryInterface!, _ cacheType: CacheType!, _ cachePolicy: CachePolicy!) -> AutomaticCacheInterface! {
        jThrow(JException("Exception", jstr("No such ") + jstr(cacheType.toString())))
    }
}

