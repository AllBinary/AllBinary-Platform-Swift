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

open class BasicUserRoleFactory: JObject {
    fileprivate static let instance: BasicUserRoleFactory! = BasicUserRoleFactory()
    fileprivate var INACTIVITYTIMEOUT: Int64 = 0
    fileprivate var CUSTOMERTIMEOUT: Int64 = 0
    fileprivate var CUSTOMERMAXSESSIONTIME: Int64 = 0
    fileprivate var MAXSESSIONTIME: Int64 = 0
    public var INSTALLER: BasicUserRole! = nil
    public var ADMINISTRATOR: BasicUserRole! = nil
    public var CUSTOMER: BasicUserRole! = nil
    public var SUBSCRIBERCUSTOMER: BasicUserRole! = nil
    public var WHOLESALECUSTOMER: BasicUserRole! = nil
    public var STOREMANAGER: BasicUserRole! = nil
    public var PRODUCTMANAGER: BasicUserRole! = nil
    public var CUSTOMERMANAGER: BasicUserRole! = nil
    public var PAYMENTMANAGER: BasicUserRole! = nil
    public var ORDERMANAGER: BasicUserRole! = nil
    public var WEBMANAGER: BasicUserRole! = nil
    public var REVIEWER: BasicUserRole! = nil
    public var SHIPPING: BasicUserRole! = nil
    public var ADJUSTER: BasicUserRole! = nil
    public var WORKFLOWEDITOR: BasicUserRole! = nil
    public var WIZARD: BasicUserRole! = nil
    public var VIEWEDITOR: BasicUserRole! = nil

    private func initFields() {
    self.INACTIVITYTIMEOUT = 360000000
    self.CUSTOMERTIMEOUT = 360000000
    self.CUSTOMERMAXSESSIONTIME = 360000000
    self.MAXSESSIONTIME = 360000000
    self.INSTALLER = BasicUserRole("Installer", 16, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.ADMINISTRATOR = BasicUserRole("Administrator", 0, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.CUSTOMER = BasicUserRole("CustomerUser", "Customer User", 1, self.CUSTOMERTIMEOUT, self.CUSTOMERMAXSESSIONTIME)
    self.SUBSCRIBERCUSTOMER = BasicUserRole("SubscriberUser", "Subscriber User", 2, self.CUSTOMERTIMEOUT, self.CUSTOMERMAXSESSIONTIME)
    self.WHOLESALECUSTOMER = BasicUserRole("WholesaleUser", "Wholesale User", 3, self.CUSTOMERTIMEOUT, self.CUSTOMERMAXSESSIONTIME)
    self.STOREMANAGER = BasicUserRole("StoreManager", "Store Manager", 4, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.PRODUCTMANAGER = BasicUserRole("ProductManager", "Product Manager", 5, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.CUSTOMERMANAGER = BasicUserRole("UserManager", "User Manager", 6, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.PAYMENTMANAGER = BasicUserRole("PaymentManager", "Payment Manager", 7, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.ORDERMANAGER = BasicUserRole("OrderManager", "Order Manager", 8, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.WEBMANAGER = BasicUserRole("WebManager", "Web Manager", 9, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.REVIEWER = BasicUserRole("Reviewer", 10, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.SHIPPING = BasicUserRole("Shipping", 11, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.ADJUSTER = BasicUserRole("Adjuster", 12, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.WORKFLOWEDITOR = BasicUserRole("WorkFlowEditor", "WorkFlow Editor", 13, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.WIZARD = BasicUserRole("WizardUser", "Wizard User", 14, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    self.VIEWEDITOR = BasicUserRole("ViewEditor", "View Editor", 15, self.MAXSESSIONTIME, self.INACTIVITYTIMEOUT)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BasicUserRoleFactory! {
        return BasicUserRoleFactory.instance
    }
}

