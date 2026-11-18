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
// package org.allbinary.logic.java.exception

import J2SEForSwiftLibrary
// import java.io.ByteArrayOutputStream

//ActualPlatform
open class ExceptionUtil: JObject {
    fileprivate static let instance: ExceptionUtil! = ExceptionUtil()
    public var PRETEND_EXCEPTION: JException! = nil
    fileprivate var NONE: String! = nil

    private func initFields() {
    self.PRETEND_EXCEPTION = JException("Exception", "Not Really An Exception")
    self.NONE = "No Stack Trace"
    }
    

    @discardableResult open class func getInstance() -> ExceptionUtil! {
        return ExceptionUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getStackTrace(_ e: JException!) -> String! {
        let bs: ByteArrayOutputStream! = ByteArrayOutputStream()
        e.printStackTrace()
        let output: String! = bs.toString()
        return output
    }
}

