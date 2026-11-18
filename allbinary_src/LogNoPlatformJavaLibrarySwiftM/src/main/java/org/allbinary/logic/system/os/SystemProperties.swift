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
// package org.allbinary.logic.system.os

import J2SEForSwiftLibrary

//NoPlatform
open class SystemProperties: JObject {
    fileprivate static let instance: SystemProperties! = SystemProperties()
    

    @discardableResult open class func getInstance() -> SystemProperties! {
        return SystemProperties.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func getName() -> String! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getArch() -> String! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getVersion() -> String! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getUserHomePath() -> String! {
        jThrow(JException("RuntimeException", ""))
    }
}

