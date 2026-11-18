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
// package org.allbinary.graphics.displayable.screen

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint

open class DisplayPointScalar: JObject {
    fileprivate static let instance: DisplayPointScalar! = DisplayPointScalar()
    

    @discardableResult open class func getInstance() -> DisplayPointScalar! {
        return DisplayPointScalar.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func processX(_ value: Int32) -> Int32 {
        return value
    }
    

    @discardableResult open func processY(_ value: Int32) -> Int32 {
        return value
    }
    

    @discardableResult open func process(_ point: GPoint!) -> GPoint! {
        return point
    }
}

