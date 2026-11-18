/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType

open class ABSystemWrapper: JObject {
    fileprivate static let instance: ABSystemWrapper! = ABSystemWrapper()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ABSystemWrapper! {
        return ABSystemWrapper.instance
    }
    

    open func arraycopy(_ src: JObject!, _ srcPos: Int32, _ dest: JObject!, _ destPos: Int32, _ length: Int32) {
        JSystem.arraycopy(src, srcPos, dest, destPos, length)
    }
    

    @discardableResult open func currentTimeMillis() -> Int64 {
        return JSystem.currentTimeMillis()
    }
}

