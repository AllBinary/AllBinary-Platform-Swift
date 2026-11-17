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
// import java.io.PrintStream

//ActualPlatform
open class ExceptionUtil: JObject {
    fileprivate static let instance: ExceptionUtil! = ExceptionUtil()
    public static let PRETEND_EXCEPTION: JException! = JException("Exception", "Not Really An Exception")
    fileprivate var NONE: String! = nil

    private func initFields() {
    self.NONE = "No Stack Trace"
    }
    

    @discardableResult public static func getInstance() -> ExceptionUtil! {
        return ExceptionUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getStackTrace(_ e: JException!) -> String! {
        if (e != nil) {
            let byteArrayOutputStream: ByteArrayOutputStream! = ByteArrayOutputStream()
            let printStream: PrintStream! = PrintStream(byteArrayOutputStream)
            e.printStackTrace(printStream)
            let output: String! = byteArrayOutputStream.toString()
            return output
        }
        return self.NONE
    }
}

