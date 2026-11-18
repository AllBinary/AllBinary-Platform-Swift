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

open class AdminRoleFactory: JObject {
    fileprivate static let instance: AdminRoleFactory! = AdminRoleFactory()
    fileprivate var adminRoles: BasicArrayList! = nil
    fileprivate var storeAdminRoles: BasicArrayList! = nil
    fileprivate var storeManagementRoles: BasicArrayList! = nil
    fileprivate var productManagementRoles: BasicArrayList! = nil
    fileprivate var reviewManagementRoles: BasicArrayList! = nil
    fileprivate var customerManagementRoles: BasicArrayList! = nil
    fileprivate var workflowManagementRoles: BasicArrayList! = nil
    fileprivate var orderManagementRoles: BasicArrayList! = nil
    fileprivate var adjusterManagementRoles: BasicArrayList! = nil
    fileprivate var shippingManagementRoles: BasicArrayList! = nil
    fileprivate var webManagementRoles: BasicArrayList! = nil

    private func initFields() {
    self.adminRoles = BasicArrayListD()
    self.storeAdminRoles = BasicArrayListD()
    self.storeManagementRoles = BasicArrayListD()
    self.productManagementRoles = BasicArrayListD()
    self.reviewManagementRoles = BasicArrayListD()
    self.customerManagementRoles = BasicArrayListD()
    self.workflowManagementRoles = BasicArrayListD()
    self.orderManagementRoles = BasicArrayListD()
    self.adjusterManagementRoles = BasicArrayListD()
    self.shippingManagementRoles = BasicArrayListD()
    self.webManagementRoles = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> AdminRoleFactory! {
        return AdminRoleFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let basicUserRoleFactory: BasicUserRoleFactory! = BasicUserRoleFactory.getInstance()
        self.adminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        self.storeManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        self.storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        self.storeManagementRoles.add(basicUserRoleFactory.REVIEWER)
        self.storeManagementRoles.add(basicUserRoleFactory.SHIPPING)
        self.productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.productManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER)
        self.reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.reviewManagementRoles.add(basicUserRoleFactory.REVIEWER)
        self.customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER)
        self.workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        self.orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER)
        self.shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.shippingManagementRoles.add(basicUserRoleFactory.SHIPPING)
        self.webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR)
        self.webManagementRoles.add(basicUserRoleFactory.STOREMANAGER)
        self.webManagementRoles.add(basicUserRoleFactory.WEBMANAGER)
        self.webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR)
        self.webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR)
    }
    

    @discardableResult open func getProductManagementRoles() -> BasicArrayList! {
        return self.productManagementRoles
    }
    

    @discardableResult open func getAdminRoles() -> BasicArrayList! {
        return self.adminRoles
    }
    

    @discardableResult open func getStoreAdminRoles() -> BasicArrayList! {
        return self.storeAdminRoles
    }
    

    @discardableResult open func getStoreManagementRoles() -> BasicArrayList! {
        return self.storeManagementRoles
    }
    

    @discardableResult open func getReviewManagementRoles() -> BasicArrayList! {
        return self.reviewManagementRoles
    }
    

    @discardableResult open func getCustomerManagementRoles() -> BasicArrayList! {
        return self.customerManagementRoles
    }
    

    @discardableResult open func getWorkflowManagementRoles() -> BasicArrayList! {
        return self.workflowManagementRoles
    }
    

    @discardableResult open func getWebManagementRoles() -> BasicArrayList! {
        return self.webManagementRoles
    }
    

    @discardableResult open func getShippingManagementRoles() -> BasicArrayList! {
        return self.shippingManagementRoles
    }
    

    @discardableResult open func getAdjusterManagementRoles() -> BasicArrayList! {
        return self.adjusterManagementRoles
    }
    

    @discardableResult open func getOrderManagementRoles() -> BasicArrayList! {
        return self.orderManagementRoles
    }
}

