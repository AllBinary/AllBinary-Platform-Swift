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
// package org.allbinary.logic.system.hardware.components.interfaces

import J2SEForSwiftLibrary

public protocol CpuInterface: AnyObject {
    @discardableResult func getProcessor() -> String!
    @discardableResult func getVendorId() -> String!
    @discardableResult func getCpuFamily() -> String!
    @discardableResult func getModel() -> String!
    @discardableResult func getModelName() -> String!
    @discardableResult func getStepping() -> String!
    @discardableResult func getCpuSpeed() -> String!
    @discardableResult func getCacheSize() -> String!
    @discardableResult func compareTo(_ cpuInterface: CpuInterface!) -> Bool
}


