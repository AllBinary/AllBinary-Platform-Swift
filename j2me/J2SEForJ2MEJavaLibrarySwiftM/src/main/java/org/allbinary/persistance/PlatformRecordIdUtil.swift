/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps

open class PlatformRecordIdUtil: JObject {
    fileprivate static let instance: PlatformRecordIdUtil! = PlatformRecordIdUtil()
    fileprivate var PLATFORM_SHORT_NAME: String! = nil

    private func initFields() {
    self.PLATFORM_SHORT_NAME = "JSE"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PlatformRecordIdUtil! {
        return PlatformRecordIdUtil.instance
    }
    

    @discardableResult open func getRecordId(_ abeClientInformation: AbeClientInformationInterface!, _ baseRecordId: String!) -> String! {
        return StringMaker().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(self.PLATFORM_SHORT_NAME).append(baseRecordId).toString()
    }
}

