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

public protocol ThirdPartyInApplicationPurchaseInterface: AnyObject {
    @discardableResult func isPurchased(_ lockableFeature: LockableFeature!) -> Bool
    func onCreate(_ anyType: JObject!, _ stateObject: JObject!)
    func onDestroy()
    func onStart()
    func onActivityResult(_ requestCode: Int32, _ resultCode: Int32, _ dataObject: JObject!)
    func onSaveInstanceState(_ anyType: JObject!)
    func onStop()
    func requestPurchase(_ lockableFeature: LockableFeature!)
    func requestReceipts()
    func add(_ lockableFeature: LockableFeature!)
    @discardableResult func getUserName() -> String!
    @discardableResult func isEnabled() -> Bool
}


