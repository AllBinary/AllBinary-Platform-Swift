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
// import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface
// import org.allbinary.util.ABHashtable

public protocol HardwareInterface: AnyObject {
    @discardableResult func getComponent(_ index: Int32) -> HardwareComponentInterface!
    @discardableResult func toString() -> String!
    @discardableResult func compareTo(_ hardwareInterface: HardwareInterface!) -> Bool
    @discardableResult func difference(_ hardwareInterface: HardwareInterface!) -> ABHashtable!
}


