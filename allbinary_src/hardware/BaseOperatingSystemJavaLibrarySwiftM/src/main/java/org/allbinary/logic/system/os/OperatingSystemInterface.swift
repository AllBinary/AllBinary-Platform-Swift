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
// package org.allbinary.logic.system.os

import J2SEForSwiftLibrary
// import org.allbinary.logic.java.character.CharacterSet

public protocol OperatingSystemInterface: AnyObject {
    @discardableResult func getName() -> String!
    @discardableResult func getVersion() -> String!
    @discardableResult func getArch() -> String!
    @discardableResult func getCharacterSet() -> CharacterSet!
    @discardableResult func isOverScan() -> Bool
    @discardableResult func getOverScanXPercent() -> Int32
    @discardableResult func getOverScanYPercent() -> Int32
    @discardableResult func isScalable() -> Bool
    @discardableResult func isAutoHide() -> Bool
    @discardableResult func toString() -> String!
}


