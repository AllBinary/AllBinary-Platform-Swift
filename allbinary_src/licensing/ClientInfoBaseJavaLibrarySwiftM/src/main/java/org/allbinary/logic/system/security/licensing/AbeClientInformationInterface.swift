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
// package org.allbinary.logic.system.security.licensing

import J2SEForSwiftLibrary
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public protocol AbeClientInformationInterface: AnyObject {
    func `init`()
    @discardableResult func getOperatingSystemInterface() -> GenericOperatingSystem!
    @discardableResult func getName() -> String!
    @discardableResult func getSpecialName() -> String!
    @discardableResult func getVersion() -> String!
    @discardableResult func getLicenseId() -> String!
    @discardableResult func getLicenseServers() -> BasicArrayList!
    @discardableResult func getLicenseServer(_ index: Int32) -> String!
    @discardableResult func getNumberOfLicenseServers() -> Int32
    @discardableResult func toHashtable() -> ABHashtable!
    @discardableResult func isSameId(_ alicenseId: String!) -> Bool
    @discardableResult func isLargerOrDifferentServerList(_ vector: BasicArrayList!) -> Bool
    @discardableResult func isHardSale() -> Bool
    @discardableResult func toShortString() -> String!
}


