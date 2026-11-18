/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.communication.log.config.type

import J2SEForSwiftLibrary

open class LogConfigTypeFactory: JObject {
    fileprivate static let instance: LogConfigTypeFactory! = LogConfigTypeFactory()
    fileprivate var NO_DESCRIPTION: String! = nil
    public var OS: LogConfigType! = nil
    public var FACTORYERROR: LogConfigType! = nil
    public var FILE: LogConfigType! = nil
    public var FILEERROR: LogConfigType! = nil
    public var IDLOGGING: LogConfigType! = nil
    public var REPLACE: LogConfigType! = nil
    public var REPLACE_INFO: LogConfigType! = nil
    public var REPLACEERROR: LogConfigType! = nil

    private func initFields() {
    self.NO_DESCRIPTION = "No Description"
    self.OS = LogConfigType("Operating System", self.NO_DESCRIPTION)
    self.FACTORYERROR = LogConfigType("Factory Error", self.NO_DESCRIPTION)
    self.FILE = LogConfigType("File", self.NO_DESCRIPTION)
    self.FILEERROR = LogConfigType("File Error", self.NO_DESCRIPTION)
    self.IDLOGGING = LogConfigType("ID Logging", self.NO_DESCRIPTION)
    self.REPLACE = LogConfigType("Replace", self.NO_DESCRIPTION)
    self.REPLACE_INFO = LogConfigType("Replace Info", self.NO_DESCRIPTION)
    self.REPLACEERROR = LogConfigType("Replace Error", self.NO_DESCRIPTION)
    }
    

    @discardableResult open class func getInstance() -> LogConfigTypeFactory! {
        return LogConfigTypeFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        LogConfigTypes.LOGGING.add(self.OS)
        LogConfigTypes.LOGGING.add(self.FACTORYERROR)
    }
}

