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
// package org.allbinary.thirdparty.store

import J2SEForSwiftLibrary
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class ThirdPartyStore: JObject {
    fileprivate var authorized: Bool = false
    fileprivate var name: String! = nil

    private func initFields() {
    self.authorized = false
    
    }
    

    public init(_ name: String!) {
        super.init()
        self.initFields()
        self.name = name
    }
    

    open func authorize(_ clientInformationInterface: AbeClientInformationInterface!) {
    }
    

    @discardableResult open func isAuthorized() -> Bool {
        return self.authorized
    }
    

    open func setAuthorized(_ authorized: Bool) {
        self.authorized = authorized
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
}

