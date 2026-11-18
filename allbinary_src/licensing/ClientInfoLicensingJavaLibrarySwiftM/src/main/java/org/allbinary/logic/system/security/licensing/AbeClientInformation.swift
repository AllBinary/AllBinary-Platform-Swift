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
// import org.allbinary.business.init.LicenseInitInfo
// import org.allbinary.business.init.LicenseInitInfoUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.string.CommonStrings

// This is the information sent to the license server
open class AbeClientInformation: ClientInformation {
    public var logUtil: LogUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    public override init(_ name: String!, _ version: String!, _ specialName: String!, _ shortName: String!) {
        super.init(name, version, specialName, shortName)
        self.initFields()
    }
    

    open override func `init`() {
        do {
            self.setOperatingSystemInterface(OperatingSystemFactory.getInstance().getOperatingSystemInstance())
            let licenseInitInfo: LicenseInitInfo! = LicenseInitInfoUtil.getInstance().read()
            self.setLicenseId(licenseInitInfo.getLicenseId())
            self.setLicenseServers(licenseInitInfo.getServerList())
            let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
            if (stringValidationUtil.isEmpty(self.getLicenseId())) {
                let NONE: String! = "No License Id"
                self.setLicenseId(NONE)
            }
            let commonStrings: CommonStrings! = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker().append("Special Name: ").append(self.getSpecialName()).toString(), self, commonStrings.CONSTRUCTOR)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

