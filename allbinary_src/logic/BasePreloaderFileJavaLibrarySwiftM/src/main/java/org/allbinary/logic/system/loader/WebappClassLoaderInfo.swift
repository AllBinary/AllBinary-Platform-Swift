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
// package org.allbinary.logic.system.loader

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil

open class WebappClassLoaderInfo: JObject {
    fileprivate static var classLoader: JObject! = NullUtil.getInstance().NULL_OBJECT
    

    public override init() {
        super.init()
    }
    

    open class func setLoader(_ classLoader: ClassLoader!) {
        WebappClassLoaderInfo.classLoader = classLoader
    }
    

    @discardableResult open class func getLoader() -> ClassLoader! {
        return (WebappClassLoaderInfo.classLoader as! ClassLoader)
    }
}

