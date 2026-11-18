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

