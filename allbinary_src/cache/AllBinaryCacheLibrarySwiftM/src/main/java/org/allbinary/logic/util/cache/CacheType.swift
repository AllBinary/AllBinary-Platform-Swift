/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

open class CacheType: JObject {
    fileprivate var vendor: String! = nil
    fileprivate var type: String! = nil

    private func initFields() {
    
    
    }
    

    public init(_ vendor: String!, _ type: String!) {
        super.init()
        self.initFields()
        self.vendor = vendor
        self.type = type
    }
    

    @discardableResult open func getVendor() -> String! {
        return self.vendor
    }
    

    @discardableResult open func getType() -> String! {
        return self.type
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("CacheType: Vendor: ")
        stringBuffer.append(self.getVendor())
        stringBuffer.append(" Type: ")
        stringBuffer.append(self.getType())
        return stringBuffer.toString()
    }
}

