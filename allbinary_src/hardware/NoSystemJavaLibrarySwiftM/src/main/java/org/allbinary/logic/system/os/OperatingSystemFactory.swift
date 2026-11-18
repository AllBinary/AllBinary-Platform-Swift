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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class OperatingSystemFactory: JObject {
    fileprivate static let instance: OperatingSystemFactory! = OperatingSystemFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var genericOperatingSystem: GenericOperatingSystem! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM
    }
    

    @discardableResult open class func getInstance() -> OperatingSystemFactory! {
        return OperatingSystemFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getOperatingSystemInstance() -> GenericOperatingSystem! {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        do {
            let osString: String! = StringMaker().append("OperatingSystem Info: ").append(self.genericOperatingSystem.toString()).toString()
            JSystem.println(jstr(osString))
            self.logUtil.putF(osString, self, commonStrings.GET_INSTANCE)
        } /* catch (Exception e): a thrown Java exception stops the program */
        return self.genericOperatingSystem
    }
}

