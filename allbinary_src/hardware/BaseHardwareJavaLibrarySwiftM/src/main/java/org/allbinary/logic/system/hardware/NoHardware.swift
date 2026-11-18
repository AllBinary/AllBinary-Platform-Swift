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
// package org.allbinary.logic.system.hardware

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
// import org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent
// import org.allbinary.util.ABHashtable

open class NoHardware: JObject, HardwareInterface {
    fileprivate static let instance: HardwareInterface! = NoHardware()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> HardwareInterface! {
        return NoHardware.instance
    }
    

    @discardableResult open func getComponent(_ index: Int32) -> HardwareComponentInterface! {
        return NoHardwareComponent.getInstance()
    }
    

    @discardableResult open override func toString() -> String! {
        return "No Hardware"
    }
    

    @discardableResult open func compareTo(_ hardwareInterface: HardwareInterface!) -> Bool {
        return true
    }
    

    @discardableResult open func difference(_ hardwareInterface: HardwareInterface!) -> ABHashtable! {
        return StdUtil.getInstance().NULL_TABLE
    }
}

