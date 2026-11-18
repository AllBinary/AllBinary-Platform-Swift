/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class InApplicationPurchaseFactory: JObject {
    fileprivate static let instance: InApplicationPurchaseFactory! = InApplicationPurchaseFactory()
    

    @discardableResult open class func getInstance() -> InApplicationPurchaseFactory! {
        return InApplicationPurchaseFactory.instance
    }
    

    public override init() {
        super.init()
    }
    

    open func `init`(_ anyType: JObject!, _ stateObject: JObject!) {
    }
    

    open func onCreate(_ anyType: JObject!, _ stateObject: JObject!) {
    }
    

    open func onStart() {
    }
    

    open func onResult(_ requestCode: Int32, _ resultCode: Int32, _ data: JObject!) {
    }
    

    open func onSaveState(_ anyType: JObject!) {
    }
    

    open func onStop() {
    }
    

    open func onDestroy() {
    }
    

    open func purchase(_ lockableFeature: LockableFeature!) {
    }
    

    @discardableResult open func isPurchased(_ lockableFeature: LockableFeature!) -> Bool {
        return false
    }
    

    open func add(_ lockableFeature: LockableFeature!) {
    }
    

    @discardableResult open func getUserName() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func isEnabled() -> Bool {
        return false
    }
}

