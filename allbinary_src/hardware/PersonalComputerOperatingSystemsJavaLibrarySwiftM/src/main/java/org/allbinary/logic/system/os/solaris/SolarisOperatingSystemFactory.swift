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
// package org.allbinary.logic.system.os.solaris

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
// import org.allbinary.logic.communication.log.config.type.LogConfigTypes
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.NoOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystems
// import org.allbinary.logic.system.os.SystemProperties
// import org.allbinary.string.CommonStrings

open class SolarisOperatingSystemFactory: JObject {
    fileprivate static let instance: SolarisOperatingSystemFactory! = SolarisOperatingSystemFactory()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    @discardableResult open class func getInstance() -> SolarisOperatingSystemFactory! {
        return SolarisOperatingSystemFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getOperatingSystemInstance() -> GenericOperatingSystem! {
        do {
            let operatingSystems: OperatingSystems! = OperatingSystems.getInstance()
            let osName: String! = SystemProperties.getInstance().getName()
            var operatingSystemInterface: GenericOperatingSystem! = nil
            if (JString.compareTo(osName, operatingSystems.SOLARIS) == 0) {
                operatingSystemInterface = SolarisOS()
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = SolarisOS()
                } else {
                    jThrow(JException("Exception", jstr("Specific Solaris OS Not Supported: ") + jstr(osName)))
                }
            }
            return operatingSystemInterface
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

