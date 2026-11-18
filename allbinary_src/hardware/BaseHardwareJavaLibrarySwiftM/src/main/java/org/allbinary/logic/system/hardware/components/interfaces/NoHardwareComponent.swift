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
// package org.allbinary.logic.system.hardware.components.interfaces

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class NoHardwareComponent: JObject, HardwareComponentInterface {
    fileprivate static let instance: NoHardwareComponent! = NoHardwareComponent()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> NoHardwareComponent! {
        return NoHardwareComponent.instance
    }
    

    @discardableResult open func compareTo(_ componentInterface: HardwareComponentInterface!) -> Bool {
        if (self === componentInterface) {
            return true
        }
        return false
    }
    

    @discardableResult open override func toString() -> String! {
        return StringUtil.getInstance().NULL_STRING
    }
}

