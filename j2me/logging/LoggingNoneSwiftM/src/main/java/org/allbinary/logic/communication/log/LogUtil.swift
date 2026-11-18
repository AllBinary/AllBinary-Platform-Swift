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

//ActualPlatform
open class LogUtil: JObject {
    fileprivate static let instance: LogUtil! = LogUtil()
    

    @discardableResult open class func getInstance() -> LogUtil! {
        return LogUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    open func putP(_ log: Log!) {
    }
    

    open func putF(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!) {
    }
    

    open func putFS(_ specialMessage: String!, _ className: String!, _ functionName: String!) {
    }
    

    open func put(_ specialMessage: String!, _ anyType: JObject!, _ functionName: String!, _ exception: JObject!) {
    }
}

