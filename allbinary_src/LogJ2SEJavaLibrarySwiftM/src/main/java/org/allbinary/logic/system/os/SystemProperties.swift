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

//ActualPlatform
open class SystemProperties: JObject {
    fileprivate static let instance: SystemProperties! = SystemProperties()
    fileprivate var OS_NAME: String! = nil
    fileprivate var OS_ARCH: String! = nil
    fileprivate var OS_VERSION: String! = nil
    fileprivate var USER_HOME: String! = nil

    private func initFields() {
    self.OS_NAME = "os.name"
    self.OS_ARCH = "os.arch"
    self.OS_VERSION = "os.version"
    self.USER_HOME = "user.home"
    }
    

    @discardableResult open class func getInstance() -> SystemProperties! {
        return SystemProperties.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getName() -> String! {
        return System.getProperty(self.OS_NAME)
    }
    

    @discardableResult open func getArch() -> String! {
        return System.getProperty(self.OS_ARCH)
    }
    

    @discardableResult open func getVersion() -> String! {
        return System.getProperty(self.OS_VERSION)
    }
    

    @discardableResult open func getUserHomePath() -> String! {
        return System.getProperty(self.USER_HOME)
    }
}

