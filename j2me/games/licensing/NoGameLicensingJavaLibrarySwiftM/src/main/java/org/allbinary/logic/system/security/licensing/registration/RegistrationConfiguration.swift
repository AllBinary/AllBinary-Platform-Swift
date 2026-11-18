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
// package org.allbinary.logic.system.security.licensing.registration

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

open class RegistrationConfiguration: JObject {
    fileprivate static let SINGLETON: RegistrationConfiguration! = RegistrationConfiguration()
    fileprivate var registrationCode: String! = nil
    public var NAME: String! = nil

    private func initFields() {
    self.registrationCode = "No Registration Code"
    self.NAME = "registrationid"
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> RegistrationConfiguration! {
        return RegistrationConfiguration.SINGLETON
    }
    

    fileprivate func read() {
    }
    

    open func write() {
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append("Registration Code: ").append(self.getRegistrationCode()).toString()
    }
    

    open func setRegistrationCode(_ registrationCode: String!) {
        self.registrationCode = registrationCode
    }
    

    @discardableResult open func getRegistrationCode() -> String! {
        return self.registrationCode
    }
}

