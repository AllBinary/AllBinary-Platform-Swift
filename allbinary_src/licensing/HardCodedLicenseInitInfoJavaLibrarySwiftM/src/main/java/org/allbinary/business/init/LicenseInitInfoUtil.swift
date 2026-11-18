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
// package org.allbinary.business.init

import J2SEForSwiftLibrary

open class LicenseInitInfoUtil: JObject {
    fileprivate static let instance: LicenseInitInfoUtil! = LicenseInitInfoUtil()
    public var INITFILENAME: String! = nil
    public var ABOUT: String! = nil
    public var PRIVACY_POLICY: String! = nil
    fileprivate var OFFICIAL_ALLBINARY_SERVICES_SERVER: String! = nil

    private func initFields() {
    self.INITFILENAME = "licenseinitdata.dat"
    self.ABOUT = "about"
    self.PRIVACY_POLICY = "privacy_policy"
    self.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php"
    }
    

    @discardableResult open class func getInstance() -> LicenseInitInfoUtil! {
        return LicenseInitInfoUtil.instance
    }
    

    open func setFilePath(_ filePath: String!) {
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func write(_ initData: LicenseInitInfo!) {
    }
    

    @discardableResult open func read() -> LicenseInitInfo! {
        return self.readAgain(0)
    }
    

    @discardableResult open func readAgain(_ initializeCounter: Int32) -> LicenseInitInfo! {
        let licenseInitInfo: LicenseInitInfo! = LicenseInitInfo()
        licenseInitInfo.clearServers()
        licenseInitInfo.addServer(self.OFFICIAL_ALLBINARY_SERVICES_SERVER)
        return licenseInitInfo
    }
}

