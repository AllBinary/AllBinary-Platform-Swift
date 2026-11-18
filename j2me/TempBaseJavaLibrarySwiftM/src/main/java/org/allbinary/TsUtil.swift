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

//TempBase
open class TsUtil: JObject {
    fileprivate static let instance: TsUtil! = TsUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> TsUtil! {
        return TsUtil.instance
    }
    

    @discardableResult open func longBitsToDouble(_ bits: Int64) -> Double {
        return Double.longBitsToDouble(bits)
    }
    

    @discardableResult open func intBitsToFloat(_ bits: Int32) -> Float {
        return Float.intBitsToFloat(bits)
    }
    

    @discardableResult open func hashCode(_ anyType: JObject!) -> Int32 {
        return anyType.hashCode()
    }
    

    open func waitFor(_ `any`: JObject!, _ timeoutMillis: Int64) {
        let anyType: JObject! = `any`
        anyType.wait(timeoutMillis)
    }
    

    @discardableResult open func compareTo(_ a: String!, _ b: String!) -> Int32 {
        return JString.compareTo(a, b)
    }
}

