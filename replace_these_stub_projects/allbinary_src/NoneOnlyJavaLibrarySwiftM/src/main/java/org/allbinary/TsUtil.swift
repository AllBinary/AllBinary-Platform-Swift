/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary

import J2SEForSwiftLibrary

//None - Do not use
open class TsUtil: JObject {
    fileprivate static let instance: TsUtil! = TsUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult public static func getInstance() -> TsUtil! {
        return TsUtil.instance
    }
    

    @discardableResult open func hashCode(_ anyType: JObject!) -> Int32 {
        return anyType.hashCode()
    }
    

    open func waitFor(_ `any`: JObject!, _ timeoutMillis: Int64) {
        let anyType: JObject! = `any`
        anyType.wait(timeoutMillis)
    }
    

    @discardableResult open func getRecord(_ anyType: JObject!, _ recordId: Int32) -> JArray<Int8>! {
        return JArray<Int8>(0, 0)
    }
    

    @discardableResult open func compareTo(_ a: String!, _ b: String!) -> Int32 {
        return JString.compareTo(a, b)
    }
    

    @discardableResult open func equalIgnoreCase(_ a: String!, _ b: String!) -> Bool {
        return JString.equalsIgnoreCase(a, b)
    }
    

    @discardableResult open func equalsNotstring(_ anyType: JObject!, _ object2: JObject!) -> Bool {
        return anyType.equals(object2)
    }
    

    @discardableResult open func toNumberFromChar(_ value: UInt16) -> Int32 {
        return Int32(truncatingIfNeeded: value)
    }
    

    @discardableResult open func toNumber(_ value: Int32) -> Int32 {
        return value
    }
    

    @discardableResult open func getByteArray(_ string: String!) -> JArray<Int8>! {
        return JString.getBytes(string)
    }
    

    @discardableResult open func isItemListener(_ owner: JObject!) -> Bool {
        return false
    }
    

    open func printAvailableMethods(_ anyType: JObject!) {
    }
    

    open func gc() {
        ()
    }
}

