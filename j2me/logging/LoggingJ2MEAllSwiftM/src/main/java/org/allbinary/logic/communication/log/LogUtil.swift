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
// package org.allbinary.logic.communication.log

import J2SEForSwiftLibrary
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

//ActualPlatform
open class LogUtil: JObject {
    fileprivate static let instance: LogUtil! = LogUtil()
    fileprivate var logFormatUtil: LogFormatUtil! = nil
    fileprivate var LOG_SUCCESS: String! = nil

    private func initFields() {
    self.logFormatUtil = LogFormatUtil.getInstance()
    self.LOG_SUCCESS = "org.allbinary: "
    }
    

    @discardableResult open class func getInstance() -> LogUtil! {
        return LogUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func putL(_ log: Log!) {
        let specialMessage: String! = log.getSpecialMessage()
        let anyType: JObject! = log.getObject()
        let functionName: String! = log.getFunctionName()
        let exception: JObject! = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    }
    

    open func putF(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!) {
        var className: String! = CommonStrings.getInstance().EMPTY
        if (JObject.className(anyType) != nil) {
            className = StringMaker().append(JObject.className(anyType)).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode(anyType))).toString()
        }
        let message: String! = self.logFormatUtil.getS(className, functionName, specialMessage)
        JSystem.println(jstr(self.LOG_SUCCESS))
        JSystem.println(jstr(message))
    }
    

    open func putFS(_ specialMessage: String!, _ className: String!, _ functionName: String!) {
        let message: String! = self.logFormatUtil.getS(className, functionName, specialMessage)
        JSystem.println(jstr(self.LOG_SUCCESS))
        JSystem.println(jstr(message))
    }
    

    open func put(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!, _ exception: JObject!) {
        var className: String! = CommonStrings.getInstance().EMPTY
        if (JObject.className(anyType) != nil) {
            let hashCodeValue: Int32 = TsUtil.getInstance().hashCode(anyType)
            let hexString: String! = Integer.toHexString(hashCodeValue)
            className = StringMaker().append(JObject.className(anyType)).append(CommonSeps.getInstance().COLON).append(hexString).toString()
        }
        let message: String! = self.logFormatUtil.get(className, functionName, specialMessage, exception)
        JSystem.println(jstr(self.LOG_SUCCESS))
        JSystem.println(jstr(message))
    }
}

