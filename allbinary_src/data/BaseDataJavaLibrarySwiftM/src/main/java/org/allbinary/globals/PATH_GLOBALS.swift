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
// package org.allbinary.globals

import J2SEForSwiftLibrary
// import org.allbinary.logic.io.path.AbPathData
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class PATH_GLOBALS: JObject {
    fileprivate static let instance: PATH_GLOBALS! = PATH_GLOBALS()
    public var DATA_PATH: String! = nil
    public var INIT_PATH: String! = nil
    public var VIEWS_PATH: String! = nil
    public var LOG_PATH: String! = nil
    public var BACKUP_PATH: String! = nil

    private func initFields() {
    
    
    
    
    
    }
    

    @discardableResult public static func getInstance() -> PATH_GLOBALS! {
        return PATH_GLOBALS.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let stringBuffer: StringMaker! = StringMaker()
        let abPathData: AbPathData! = AbPathData.getInstance()
        stringBuffer.append("data")
        stringBuffer.append(abPathData.SEPARATOR)
        self.DATA_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(self.DATA_PATH)
        stringBuffer.append(CommonStrings.getInstance().INIT)
        stringBuffer.append(abPathData.SEPARATOR)
        self.INIT_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(self.DATA_PATH)
        stringBuffer.append("log")
        stringBuffer.append(abPathData.SEPARATOR)
        self.LOG_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(self.DATA_PATH)
        stringBuffer.append("backup")
        stringBuffer.append(abPathData.SEPARATOR)
        self.BACKUP_PATH = stringBuffer.toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringBuffer.append(self.INIT_PATH)
        stringBuffer.append("views")
        stringBuffer.append(abPathData.SEPARATOR)
        self.VIEWS_PATH = stringBuffer.toString()
    }
}

