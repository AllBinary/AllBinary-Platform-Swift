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

open class ThirdPartyInApplicationPurchase: JObject, ThirdPartyInApplicationPurchaseInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func isPurchased(_ lockableFeature: LockableFeature!) -> Bool {
        return false
    }
    

    open func onCreate(_ anyType: JObject!, _ stateObject: JObject!) {
    }
    

    open func onDestroy() {
    }
    

    open func onStart() {
    }
    

    open func onActivityResult(_ requestCode: Int32, _ resultCode: Int32, _ dataObject: JObject!) {
    }
    

    open func onSaveInstanceState(_ anyType: JObject!) {
    }
    

    open func onStop() {
    }
    

    open func requestPurchase(_ lockableFeature: LockableFeature!) {
    }
    

    open func requestReceipts() {
    }
    

    open func add(_ lockableFeature: LockableFeature!) {
    }
    

    @discardableResult open func getUserName() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func isEnabled() -> Bool {
        return false
    }
    

    open func requestProducts() {
    }
}

