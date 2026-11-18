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
// import org.allbinary.string.CommonStrings

//ActualPlatform
open class PreLogUtil: JObject {
    fileprivate static let LOG_SUCCESS: String! = "org.allbinary: "
    

    public override init() {
        super.init()
    }
    

    open class func put(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    }
    

    open class func putOE(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!, _ exception: JObject!) {
        var className: String! = CommonStrings.getInstance().EMPTY
        if (JObject.className(anyType) != nil) {
            className = JObject.className(anyType)
        }
        let message: String! = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        JSystem.println(jstr(PreLogUtil.LOG_SUCCESS))
        JSystem.println(jstr(message))
    }
    

    open class func putS(_ specialMessage: String!, _ className: String!, _ functionName: String!) {
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)
    }
    

    open class func putSE(_ specialMessage: String!, _ className: String!, _ functionName: String!, _ exception: JObject!) {
        let message: String! = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        JSystem.println(jstr(PreLogUtil.LOG_SUCCESS))
        JSystem.println(jstr(message))
    }
    

    @discardableResult open class func getClassName(_ anyType: JObject!) -> String! {
        return JObject.className(anyType)
    }
}

