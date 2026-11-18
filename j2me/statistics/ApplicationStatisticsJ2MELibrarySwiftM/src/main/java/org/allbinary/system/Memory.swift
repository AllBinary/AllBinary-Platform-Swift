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
// package org.allbinary.system

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

//ActualPlatform
open class Memory: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInfo() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Memory: Free: ")
        stringBuffer.appendlong(Runtime.getRuntime().freeMemory())
        stringBuffer.append(" Total: ")
        stringBuffer.appendlong(Runtime.getRuntime().totalMemory())
        return stringBuffer.toString()
    }
}

