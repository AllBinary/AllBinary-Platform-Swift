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

//NoPlatform
open class LogFormatUtil: JObject {
    fileprivate static let instance: LogFormatUtil! = LogFormatUtil()
    

    @discardableResult open class func getInstance() -> LogFormatUtil! {
        return LogFormatUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func get(_ className: String!, _ functionName: String!, _ specialMessage: String!, _ exception: JObject!) -> String! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getS(_ className: String!, _ functionName: String!, _ specialMessage: String!) -> String! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getO(_ exception: JObject!) -> String! {
        jThrow(JException("RuntimeException", ""))
    }
}

