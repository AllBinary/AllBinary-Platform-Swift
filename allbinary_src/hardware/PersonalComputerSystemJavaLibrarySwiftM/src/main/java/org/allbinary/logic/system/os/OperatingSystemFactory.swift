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
// import org.allbinary.logic.communication.log.Log
// import org.allbinary.logic.communication.log.LogFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
// import org.allbinary.logic.communication.log.config.type.LogConfigTypes
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory
// import org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory
// import org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory
// import org.allbinary.string.CommonStrings

open class OperatingSystemFactory: JObject {
    fileprivate static let instance: OperatingSystemFactory! = OperatingSystemFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var genericOperatingSystem: GenericOperatingSystem! = nil
    fileprivate var hasDetected: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM
    self.hasDetected = false
    }
    

    @discardableResult open class func getInstance() -> OperatingSystemFactory! {
        return OperatingSystemFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getOperatingSystemInstance() -> GenericOperatingSystem! {
        do {
            let operatingSystems: OperatingSystems! = OperatingSystems.getInstance()
            let systemProperties: SystemProperties! = SystemProperties.getInstance()
            let osName: String! = systemProperties.getName()
            _ = systemProperties.getArch()
            _ = systemProperties.getVersion()
            if (!self.hasDetected) {
                self.logUtil.putF(jstr("osName: ") + jstr(osName), self, self.commonStrings.GET_INSTANCE)
                self.hasDetected = true
                if (JString.indexOf(osName, operatingSystems.LINUX) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        self.logUtil.putF("Found a Linux OS", self, self.commonStrings.GET_INSTANCE)
                    }
                    self.genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                } else if (JString.indexOf(osName, operatingSystems.WINDOWS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        self.logUtil.putF("Found a Windows OS", self, self.commonStrings.GET_INSTANCE)
                    }
                    self.genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                } else if (JString.indexOf(osName, operatingSystems.SOLARIS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        self.logUtil.putF("Found a Solaris OS", self, self.commonStrings.GET_INSTANCE)
                    }
                    self.genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance()
                } else {
                    jThrow(JException("Exception", StringMaker().append("OS Not Supported: ").append(osName).toString()))
                }
                let log: Log! = LogFactory.getInstanceF(StringMaker().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString(self.genericOperatingSystem)).toString(), self, self.commonStrings.GET_INSTANCE)
                JSystem.println(jstr(log.toString()))
                self.logUtil.putL(log)
            }
            return self.genericOperatingSystem
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

