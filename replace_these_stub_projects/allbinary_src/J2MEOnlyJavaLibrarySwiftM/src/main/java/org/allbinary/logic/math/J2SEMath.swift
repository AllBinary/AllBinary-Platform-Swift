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
// package org.allbinary.logic.math

import J2SEForSwiftLibrary

open class J2SEMath: JObject {
    fileprivate static let instance: J2SEMath! = J2SEMath()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> J2SEMath! {
        return J2SEMath.instance
    }
    

    @discardableResult open func round(_ value: Float) -> Int32 {
        return JMath.toInt32(Double(value))
    }
    

    @discardableResult open func abs(_ value: Float) -> Float {
        return ((value < 0.0) ? -value : value)
    }
    

    @discardableResult open func absdouble(_ value: Double) -> Double {
        return ((value < 0.0) ? -value : value)
    }
}

