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
// package org.allbinary.logic.system

import J2SEForSwiftLibrary
// import org.allbinary.KotlinUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

open class SoftwareInformation: JObject {
    fileprivate var name: String! = nil
    fileprivate var shortName: String! = nil
    fileprivate var version: String! = nil

    private func initFields() {
    
    
    
    }
    

    public init(_ name: String!, _ version: String!, _ shortName: String!) {
        super.init()
        self.initFields()
        self.name = name
        self.version = version
        self.shortName = StringMaker().append(shortName).append(KotlinUtil.getShortName()).toString()
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open func getVersion() -> String! {
        return self.version
    }
    

    @discardableResult open func toShortString() -> String! {
        return self.shortName
    }
    

    @discardableResult open override func toString() -> String! {
        let NAME: String! = "Name: "
        let VERSION: String! = "Version: "
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(NAME)
        stringBuffer.append(self.getName())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(VERSION)
        stringBuffer.append(self.getVersion())
        return stringBuffer.toString()
    }
}

