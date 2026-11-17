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
// import org.allbinary.logic.communication.log.LogFormatUtil

open class Log: JObject {
    fileprivate var logFormatUtil: LogFormatUtil! = nil
    fileprivate var specialMessage: String! = nil
    fileprivate var anyType: JObject! = nil
    fileprivate var functionName: String! = nil
    fileprivate var exception: JObject! = nil

    private func initFields() {
    self.logFormatUtil = LogFormatUtil.getInstance()
    
    
    
    
    }
    

    public init(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!, _ exception: JObject!) {
        super.init()
        self.initFields()
        self.specialMessage = specialMessage
        self.anyType = anyType
        self.functionName = functionName
        self.exception = exception
    }
    

    @discardableResult open func getSpecialMessage() -> String! {
        return self.specialMessage
    }
    

    @discardableResult open func getObject() -> JObject! {
        return self.anyType
    }
    

    @discardableResult open func getFunctionName() -> String! {
        return self.functionName
    }
    

    @discardableResult open func getThrowable() -> JObject! {
        return self.exception
    }
    

    @discardableResult open override func toString() -> String! {
        var className: String! = CommonStrings.getInstance().EMPTY
        let clazz: String! = JObject.className(self.anyType)
        if (clazz != nil) {
            className = clazz
        }
        return self.logFormatUtil.get(className, self.functionName, self.specialMessage, self.exception)
    }
}

