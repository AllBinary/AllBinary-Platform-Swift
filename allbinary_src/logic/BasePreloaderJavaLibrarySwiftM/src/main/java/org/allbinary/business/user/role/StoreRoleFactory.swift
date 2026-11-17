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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class StoreRoleFactory: JObject {
    fileprivate static let instance: StoreRoleFactory! = StoreRoleFactory()
    fileprivate var roles: BasicArrayList! = nil
    fileprivate var subscriberRoles: BasicArrayList! = nil
    fileprivate var wholesaleRoles: BasicArrayList! = nil

    private func initFields() {
    self.roles = BasicArrayListD()
    self.subscriberRoles = BasicArrayListD()
    self.wholesaleRoles = BasicArrayListD()
    }
    

    @discardableResult public static func getInstance() -> StoreRoleFactory! {
        return StoreRoleFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let basicUserRoleFactory: BasicUserRoleFactory! = BasicUserRoleFactory.getInstance()
        self.roles.add(basicUserRoleFactory.CUSTOMER)
        self.roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        self.roles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
        self.subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER)
        self.wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER)
    }
    

    @discardableResult open func getRoles() -> BasicArrayList! {
        return self.roles
    }
    

    @discardableResult open func getSubscriberRoles() -> BasicArrayList! {
        return self.subscriberRoles
    }
    

    @discardableResult open func getWholesaleRoles() -> BasicArrayList! {
        return self.wholesaleRoles
    }
}

