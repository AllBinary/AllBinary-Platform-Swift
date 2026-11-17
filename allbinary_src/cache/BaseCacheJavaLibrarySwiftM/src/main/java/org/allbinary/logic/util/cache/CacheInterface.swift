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
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod

public protocol CacheInterface: AnyObject {
    func add(_ cacheableInterface: CacheableInterface!)
    func addArray(_ cacheableInterfaces: JArray<CacheableInterface?>!)
    func clear()
}


