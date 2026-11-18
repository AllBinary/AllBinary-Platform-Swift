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
// package org.allbinary.business.init

import J2SEForSwiftLibrary
// import org.allbinary.debug.DebugFactory
// import org.allbinary.debug.NoDebug
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class LicenseInitInfo: JObject {
    fileprivate var id: String! = nil
    fileprivate var serverVector: BasicArrayList! = nil

    private func initFields() {
    self.id = StringUtil.getInstance().EMPTY_STRING
    self.serverVector = BasicArrayListD()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getLicenseId() -> String! {
        return self.id
    }
    

    @discardableResult open func getServer(_ index: Int32) -> String! {
        return jUnboxString(self.serverVector.objectArray[index])
    }
    

    @discardableResult open func getNumberOfServers() -> Int32 {
        return self.serverVector.size()
    }
    

    open func setLicenseId(_ value: String!) {
        self.id = value
    }
    

    open func clearServers() {
        self.serverVector = BasicArrayListD()
    }
    

    open func setServer(_ value: String!, _ index: Int32) {
        self.serverVector.addAt(index, jBoxString(value))
    }
    

    open func addServer(_ value: String!) {
        self.serverVector.add(jBoxString(value))
    }
    

    @discardableResult open func getServerList() -> BasicArrayList! {
        return self.serverVector
    }
    

    open func setServerList(_ servers: BasicArrayList!) {
        if (DebugFactory.getInstance() == NoDebug.getInstance()) {
            self.serverVector = servers
        }
    }
}

