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
// import org.allbinary.logic.string.StringUtil

//ActualPlatform
open class LogFactory: JObject {
    public static let LOG: Log! = Log(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT)

    public override init() {
        super.init()
    }
    

    @discardableResult public static func getInstanceD() -> Log! {
        let stringUtil: StringUtil! = StringUtil.getInstance()
        let nullUtil: NullUtil! = NullUtil.getInstance()
        return Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT)
    }
    

    @discardableResult public static func getInstance(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!, _ exception: JObject!) -> Log! {
        return LogFactory.LOG
    }
    

    @discardableResult public static func getInstanceF(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!) -> Log! {
        return LogFactory.LOG
    }
}

