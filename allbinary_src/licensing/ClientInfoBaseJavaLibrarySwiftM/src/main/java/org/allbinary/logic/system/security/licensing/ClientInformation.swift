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
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.hardware.HardwareInterface
// import org.allbinary.logic.system.hardware.SystemHardwareFactory
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.NoOperatingSystem
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

// This is the information sent to the license server
open class ClientInformation: JObject, AbeClientInformationInterface {
    fileprivate var operatingSystemInterface: GenericOperatingSystem! = nil
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var name: String! = nil
    fileprivate var shortName: String! = nil
    fileprivate var version: String! = nil
    fileprivate var specialName: String! = nil
    fileprivate var hardSale: Bool = false
    fileprivate var licenseId: String! = nil
    fileprivate var licenseServers: BasicArrayList! = nil

    private func initFields() {
    self.operatingSystemInterface = NoOperatingSystem.NO_OPERATING_SYSTEM
    self.tsUtil = TsUtil.getInstance()
    
    
    
    
    self.hardSale = true
    self.licenseId = StringUtil.getInstance().EMPTY_STRING
    self.licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance()
    }
    

    public init(_ name: String!, _ version: String!, _ specialName: String!, _ shortName: String!) {
        super.init()
        self.initFields()
        self.name = name
        self.version = version
        self.specialName = specialName
        self.shortName = StringMaker().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).toString()
        self.`init`()
    }
    

    open func `init`() {
    }
    

    @discardableResult open func getOperatingSystemInterface() -> GenericOperatingSystem! {
        return self.operatingSystemInterface
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open func getSpecialName() -> String! {
        return self.specialName
    }
    

    @discardableResult open func getVersion() -> String! {
        return self.version
    }
    

    @discardableResult open func getLicenseId() -> String! {
        return self.licenseId
    }
    

    @discardableResult open func getLicenseServers() -> BasicArrayList! {
        return self.licenseServers
    }
    

    @discardableResult open func getLicenseServer(_ index: Int32) -> String! {
        return jUnboxString(self.licenseServers.objectArray[index])
    }
    

    @discardableResult open func getNumberOfLicenseServers() -> Int32 {
        return self.licenseServers.size()
    }
    

    @discardableResult open func toHashtable() -> ABHashtable! {
        let abeClientInformationData: AbeClientInformationData! = AbeClientInformationData.getInstance()
        let genericOperatingSystem: GenericOperatingSystem! = self.getOperatingSystemInterface()
        let clientInfoHashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
        clientInfoHashtable.put(jBoxString(abeClientInformationData.NAME), jBoxString(self.name))
        clientInfoHashtable.put(jBoxString(abeClientInformationData.VERSION), jBoxString(self.version))
        clientInfoHashtable.put(jBoxString(abeClientInformationData.SPECIALNAME), jBoxString(self.specialName))
        clientInfoHashtable.put(jBoxString(abeClientInformationData.LICENSEID), self.getLicenseId())
        clientInfoHashtable.put(jBoxString(abeClientInformationData.OSNAME), jBoxString(genericOperatingSystem.getName()))
        clientInfoHashtable.put(jBoxString(abeClientInformationData.OSARCH), jBoxString(genericOperatingSystem.getArch()))
        clientInfoHashtable.put(jBoxString(abeClientInformationData.OSVERSION), genericOperatingSystem.getVersion())
        clientInfoHashtable.put(jBoxString(abeClientInformationData.OS), jBoxString(genericOperatingSystem.toString()))
        let hardwareInterface: HardwareInterface! = SystemHardwareFactory.getInstance().getInstance(genericOperatingSystem)
        let hardwareString: String! = jstr(hardwareInterface)
        clientInfoHashtable.put(jBoxString(abeClientInformationData.HARDWARE), jBoxString(hardwareString))
        return clientInfoHashtable
    }
    

    @discardableResult open func isSameId(_ alicenseId: String!) -> Bool {
        if (self.tsUtil.compareTo(self.getLicenseId(), alicenseId) == 0) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func isLargerOrDifferentServerList(_ list: BasicArrayList!) -> Bool {
        let size: Int32 = list.size() &- 1
        let currentSize: Int32 = self.licenseServers.size() &- 1
        if (size > currentSize) {
            return true
        }
        do {
            var index: Int32 = size
            while (index >= 0) {
                defer { index &-= 1 }
            let newServerName: String! = jUnboxString(list.objectArray[index])
            do {
                var index2: Int32 = currentSize
                while (index2 >= 0) {
                    defer { index2 &-= 1 }
                let nextOldServerName: String! = jUnboxString(self.licenseServers.objectArray[index])
                if (self.tsUtil.compareTo(newServerName, nextOldServerName) != 0) {
                    return true
                }
                }
            }
            }
        }
        return false
    }
    

    open func setHardSale(_ hardSale: Bool) {
        self.hardSale = hardSale
    }
    

    @discardableResult open func isHardSale() -> Bool {
        return self.hardSale
    }
    

    open func setOperatingSystemInterface(_ operatingSystemInterface: GenericOperatingSystem!) {
        self.operatingSystemInterface = operatingSystemInterface
    }
    

    open func setLicenseId(_ licenseId: String!) {
        self.licenseId = licenseId
    }
    

    open func setLicenseServers(_ licenseServers: BasicArrayList!) {
        self.licenseServers = licenseServers
    }
    

    @discardableResult open func toShortString() -> String! {
        return self.shortName
    }
}

