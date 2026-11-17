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
// package org.allbinary.business.user.role

import J2SEForSwiftLibrary
// import java.io.Serializable

open class BasicUserRole: JObject, Serializable {
    fileprivate var m_int_RoleId: Int32 = 0
    fileprivate var role: String! = nil
    fileprivate var displayValue: String! = nil
    fileprivate var sessionTimeout: Int64 = 0
    fileprivate var sessionInactivityTimeout: Int64 = 0

    private func initFields() {
    
    
    
    
    
    }
    

    public convenience init(_ aRole: String!, _ a_int_RoleId: Int32, _ aSessionTimeout: Int64, _ aSessionInactivityTimeout: Int64) {
        self.init(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
    }
    

    public init(_ aRole: String!, _ aDisplayValue: String!, _ a_int_RoleId: Int32, _ aSessionTimeout: Int64, _ aSessionInactivityTimeout: Int64) {
        super.init()
        self.initFields()
        self.m_int_RoleId = a_int_RoleId
        self.role = aRole
        self.displayValue = aDisplayValue
        self.sessionTimeout = aSessionTimeout
        self.sessionInactivityTimeout = aSessionInactivityTimeout
        BasicUserRoles.getInstance().roleVector.add(self)
    }
    

    @discardableResult fileprivate func getRoleId() -> Int32 {
        return self.m_int_RoleId
    }
    

    @discardableResult open func getRole() -> String! {
        return self.role
    }
    

    @discardableResult open func getSessionTimeout() -> Int64 {
        return self.sessionTimeout
    }
    

    @discardableResult open func getSessionInactivityTimeout() -> Int64 {
        return self.sessionInactivityTimeout
    }
    

    @discardableResult open func equals(_ basicUserRole: BasicUserRole!) -> Bool {
        if (self.getRoleId() == basicUserRole.getRoleId()) {
            return true
        }
        return false
    }
    

    @discardableResult open override func toString() -> String! {
        return self.getRole()
    }
}

