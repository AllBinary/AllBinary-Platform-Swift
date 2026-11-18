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
// package org.allbinary.logic.system.security.licensing

import J2SEForSwiftLibrary

open class AbeClientInformationData: JObject {
    fileprivate static let instance: AbeClientInformationData! = AbeClientInformationData()
    public var KEY: String! = nil
    public var NAME: String! = nil
    public var VERSION: String! = nil
    public var SPECIALNAME: String! = nil
    public var LICENSEID: String! = nil
    public var LICENSE_TYPE: String! = nil
    public var PREVIOUSLICENSEID: String! = nil
    public var OSNAME: String! = nil
    public var OSARCH: String! = nil
    public var OSVERSION: String! = nil
    public var OS: String! = nil
    public var HARDWARE: String! = nil
    public var LICENSESERVERS: String! = nil
    public var NEWLICENSE: String! = nil
    public var ISNEW: String! = nil
    public var SPECIAL: String! = nil

    private func initFields() {
    self.KEY = "KEY"
    self.NAME = "NAME"
    self.VERSION = "VERSION"
    self.SPECIALNAME = "SPECIALNAME"
    self.LICENSEID = "LICENSEID"
    self.LICENSE_TYPE = "LICENSETYPE"
    self.PREVIOUSLICENSEID = "PREVIOUSLICENSEID"
    self.OSNAME = "OSNAME"
    self.OSARCH = "OSARCH"
    self.OSVERSION = "OSVERSION"
    self.OS = "OS"
    self.HARDWARE = "HARDWARE"
    self.LICENSESERVERS = "LICENSESERVERS"
    self.NEWLICENSE = "NEWLICENSE"
    self.ISNEW = "ISNEW"
    self.SPECIAL = "SPECIAL"
    }
    

    @discardableResult open class func getInstance() -> AbeClientInformationData! {
        return AbeClientInformationData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

