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
// package org.allbinary.logic.system.hardware

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.string.CommonStrings

open class SystemHardwareFactory: JObject {
    fileprivate static let instance: SystemHardwareFactory! = SystemHardwareFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var hardwareInterface: HardwareInterface! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.hardwareInterface = NoHardware.getInstance()
    }
    

    @discardableResult open class func getInstance() -> SystemHardwareFactory! {
        return SystemHardwareFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstance(_ operatingSystemInterface: GenericOperatingSystem!) -> HardwareInterface! {
        do {
            if (self.hardwareInterface === NoHardware.getInstance()) {
                self.hardwareInterface = HardwareFactory.getInstance().getInstance(operatingSystemInterface)
            }
            self.logUtil.putF("Found Hardware", self, self.commonStrings.CONSTRUCTOR)
        } /* catch (Exception e): a thrown Java exception stops the program */
        return self.hardwareInterface
    }
    

    @discardableResult open class func static_toString() -> String! {
        let systemHardwareFactory: SystemHardwareFactory! = SystemHardwareFactory.getInstance()
        let osBuffer: StringMaker! = StringMaker()
        osBuffer.append("Hardware Info: \n")
        if (systemHardwareFactory.hardwareInterface != nil) {
            osBuffer.append(systemHardwareFactory.hardwareInterface.toString())
        } else {
            osBuffer.append(StringUtil.getInstance().NULL_STRING)
        }
        return osBuffer.toString()
    }
}

