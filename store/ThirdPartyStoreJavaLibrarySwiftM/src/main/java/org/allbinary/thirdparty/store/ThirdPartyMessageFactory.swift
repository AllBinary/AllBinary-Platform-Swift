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

open class ThirdPartyMessageFactory: JObject {
    fileprivate static let instance: ThirdPartyMessageFactory! = ThirdPartyMessageFactory()
    public var AUTHORIZED: String! = nil
    public var NOT_AUTHORIZED: String! = nil
    public var LINKAGE_ERROR: String! = nil

    private func initFields() {
    self.AUTHORIZED = "Authorized"
    self.NOT_AUTHORIZED = "Not Authorized"
    self.LINKAGE_ERROR = "Linkage Error"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> ThirdPartyMessageFactory! {
        return ThirdPartyMessageFactory.instance
    }
}

