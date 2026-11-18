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
// package org.allbinary.media.audio

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class AllBinaryMediaManagerShutdown: JObject {
    fileprivate static let instance: AllBinaryMediaManagerShutdown! = AllBinaryMediaManagerShutdown()

    public override init() {
        super.init()
    }
    

    open class func shutdown(_ soundsFactoryInterface: SoundsFactoryInterface!) {
        let logUtil: LogUtil! = LogUtil.getInstance()
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        logUtil.putF(commonStrings.START, AllBinaryMediaManagerShutdown.instance, "shutdown")
        AllBinaryMediaManager.shutdown(soundsFactoryInterface)
    }
}

