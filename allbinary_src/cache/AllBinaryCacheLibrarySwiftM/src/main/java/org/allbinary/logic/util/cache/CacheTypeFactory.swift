// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class CacheTypeFactory: JObject {
    fileprivate static let instance: CacheTypeFactory! = CacheTypeFactory()
    public var NO_CACHE: CacheType! = nil
    public var CACHE: CacheType! = nil
    public var SET: CacheType! = nil
    public var CACHE_VECTOR: CacheType! = nil

    private func initFields() {
    self.NO_CACHE = CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    self.CACHE = CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    self.SET = CacheType(StringUtil.getInstance().EMPTY_STRING, "Set")
    self.CACHE_VECTOR = CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CacheTypeFactory! {
        return CacheTypeFactory.instance
    }
}

