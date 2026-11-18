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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.java.exception.ExceptionUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.TimeStampUtil

//ActualPlatform
open class LogFormatUtil: JObject {
    fileprivate static let instance: LogFormatUtil! = LogFormatUtil()
    fileprivate var timeStampUtil: TimeStampUtil! = nil
    fileprivate var commonSeps: CommonSeps! = nil
    fileprivate var NONE: String! = nil
    fileprivate var LOG_ERROR: String! = nil
    fileprivate var EMPTY: String! = nil
    fileprivate var STACK_TRACE: String! = nil
    fileprivate var TIME: String! = nil
    fileprivate var CLASS_NAME: String! = nil
    fileprivate var FUNCTION_CALL: String! = nil
    fileprivate var SPECIAL_MESSAGE: String! = nil
    fileprivate var stringUtil: StringUtil! = nil
    fileprivate var exceptionUtil: ExceptionUtil! = nil
    fileprivate var nullUtil: NullUtil! = nil

    private func initFields() {
    self.timeStampUtil = TimeStampUtil.getInstance()
    self.commonSeps = CommonSeps.getInstance()
    self.NONE = "None"
    self.LOG_ERROR = "\nLog-Error: "
    self.EMPTY = "Empty"
    self.STACK_TRACE = "\nStack Trace: "
    self.TIME = "Time: "
    self.CLASS_NAME = self.commonSeps.SPACE
    self.FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP
    self.SPECIAL_MESSAGE = "> "
    self.stringUtil = StringUtil.getInstance()
    self.exceptionUtil = ExceptionUtil.getInstance()
    self.nullUtil = NullUtil.getInstance()
    }
    

    @discardableResult open class func getInstance() -> LogFormatUtil! {
        return LogFormatUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func get(_ className: String!, _ functionName: String!, _ specialMessage: String!, _ exception: JObject!) -> String! {
        let stringBuffer: StringMaker! = self.getF(className, functionName)
        stringBuffer.append(self.getO(exception))
        stringBuffer.append(self.SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(self.commonSeps.NEW_LINE)
        return stringBuffer.toString()
    }
    

    @discardableResult open func getS(_ className: String!, _ functionName: String!, _ specialMessage: String!) -> String! {
        let stringBuffer: StringMaker! = self.getF(className, functionName)
        stringBuffer.append(self.SPECIAL_MESSAGE)
        stringBuffer.append(specialMessage)
        stringBuffer.append(self.commonSeps.NEW_LINE)
        return stringBuffer.toString()
    }
    

    @discardableResult fileprivate func getF(_ className: String!, _ functionName: String!) -> StringMaker! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(self.TIME)
        stringBuffer.append(self.timeStampUtil.getAsString())
        stringBuffer.append(self.CLASS_NAME)
        stringBuffer.append(className)
        stringBuffer.append(self.FUNCTION_CALL)
        stringBuffer.append(functionName)
        return stringBuffer
    }
    

    @discardableResult open func getO(_ exception: JObject!) -> String! {
        if (exception !== self.nullUtil.NULL_OBJECT) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(self.LOG_ERROR)
            let exceptionAsString: String! = exception.toString()
            stringBuffer.append(exceptionAsString)
            stringBuffer.append(self.STACK_TRACE)
            if (exception !== self.nullUtil.NULL_OBJECT) {
                stringBuffer.append(self.exceptionUtil.getStackTrace((exception as! JException)))
            } else {
                stringBuffer.append(self.stringUtil.NULL_STRING)
            }
            return stringBuffer.toString()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
}

