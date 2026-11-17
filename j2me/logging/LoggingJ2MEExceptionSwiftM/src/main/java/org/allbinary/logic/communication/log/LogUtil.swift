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
    

    @discardableResult public static func getInstance() -> LogUtil! {
        return LogUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func putL(_ log: Log!) {
        if (log === LogFactory.LOG) {
            return
        }
        let exception: JObject! = log.getThrowable()
        if (exception == nil) {
            return
        }
        let specialMessage: String! = log.getSpecialMessage()
        let anyType: JObject! = log.getObject()
        let functionName: String! = log.getFunctionName()
        self.put(specialMessage, anyType, functionName, exception)
    }
    

    open func putF(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!) {
    }
    

    open func putFS(_ specialMessage: String!, _ className: String!, _ functionName: String!) {
    }
    

    open func put(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!, _ exception: JObject!) {
        var className: String! = CommonStrings.getInstance().EMPTY
        if (JObject.className(anyType) != nil) {
            className = JObject.className(anyType)
        }
        let message: String! = self.logFormatUtil.get(className, functionName, specialMessage, exception)
        JSystem.println(jstr(self.LOG_SUCCESS))
        JSystem.println(jstr(message))
    }
}

