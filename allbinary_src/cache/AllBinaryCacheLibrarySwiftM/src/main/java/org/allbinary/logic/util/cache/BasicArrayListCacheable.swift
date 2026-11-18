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
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayListD

open class BasicArrayListCacheable: BasicArrayListD, CacheableInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getKey() -> JObject! {
        return StringUtil.getInstance().EMPTY_STRING
    }
}

