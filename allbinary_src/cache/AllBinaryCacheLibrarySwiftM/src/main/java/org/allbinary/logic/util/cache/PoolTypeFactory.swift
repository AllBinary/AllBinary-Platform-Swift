// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache

import J2SEForSwiftLibrary

open class PoolTypeFactory: JObject {
    fileprivate static let instance: PoolTypeFactory! = PoolTypeFactory()
    public var VECTOR_POOL: PoolType! = nil

    private func initFields() {
    self.VECTOR_POOL = PoolType(CacheTypeFactory.getInstance().NO_CACHE)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PoolTypeFactory! {
        return PoolTypeFactory.instance
    }
}

