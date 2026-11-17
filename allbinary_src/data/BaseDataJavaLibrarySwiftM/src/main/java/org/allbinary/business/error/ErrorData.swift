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
// package org.allbinary.business.error

import J2SEForSwiftLibrary

open class ErrorData: JObject {
    fileprivate static let instance: ErrorData! = ErrorData()
    public var NAME: String! = nil
    public var TEXT: String! = nil

    private func initFields() {
    self.NAME = "ERROR_NAME"
    self.TEXT = "ERROR_TEXT"
    }
    

    @discardableResult public static func getInstance() -> ErrorData! {
        return ErrorData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

