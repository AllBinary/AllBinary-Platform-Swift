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
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary

open class CachePolicyFactory: JObject {
    fileprivate static let instance: CachePolicyFactory! = CachePolicyFactory()
    public var NAME: String! = nil
    public var MAX_TIME_THOUSAND_MAX: CachePolicy! = nil
    public var THIRTY_MINUTES_TEN_THOUSAND_MAX: CachePolicy! = nil
    public var THIRTY_MINUTES_FIFTY_THOUSAND_MAX: CachePolicy! = nil
    public var ONE_MINUTE_FIVE_MAX: CachePolicy! = nil
    public var ONE_MINUTE_TEN_MAX: CachePolicy! = nil
    public var ONE_MINUTE_ONE_HUNDRED_MAX: CachePolicy! = nil

    private func initFields() {
    self.NAME = "lru"
    self.MAX_TIME_THOUSAND_MAX = CachePolicy(self.NAME, Long.MAX_VALUE, 1000)
    self.THIRTY_MINUTES_TEN_THOUSAND_MAX = CachePolicy(self.NAME, 1000 &* 60 &* 30, 10000)
    self.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = CachePolicy(self.NAME, 1000 &* 60 &* 30, 100000)
    self.ONE_MINUTE_FIVE_MAX = CachePolicy(self.NAME, 1000 &* 60 &* 1, 5)
    self.ONE_MINUTE_TEN_MAX = CachePolicy(self.NAME, 1000 &* 60 &* 1, 10)
    self.ONE_MINUTE_ONE_HUNDRED_MAX = CachePolicy(self.NAME, 1000 &* 60 &* 1, 100)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CachePolicyFactory! {
        return CachePolicyFactory.instance
    }
}

