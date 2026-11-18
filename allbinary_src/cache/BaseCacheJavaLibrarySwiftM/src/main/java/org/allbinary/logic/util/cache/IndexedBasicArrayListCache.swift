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
// import jsinterop.annotations.JsType
// import org.allbinary.string.CommonStrings
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class IndexedBasicArrayListCache: BaseBasicArrayListCache, CacheInterface {
    public var commonStrings: CommonStrings! = nil
    fileprivate var size: Int32 = 0
    public var index: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    self.size = 0
    self.index = 0
    }
    

    @discardableResult open class func createCache(_ size: Int32) -> IndexedBasicArrayListCache! {
        let indexedBasicArrayListCache: IndexedBasicArrayListCache! = IndexedBasicArrayListCache()
        indexedBasicArrayListCache.`init`(size)
        return indexedBasicArrayListCache
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ size: Int32) {
        if (self.size < size) {
            self.list.ensureCapacity(size)
            do {
                var index: Int32 = size &- 1
                while (index >= self.size) {
                    defer { index &-= 1 }
                self.addDefault()
                }
            }
            self.size = size
        }
    }
    

    @discardableResult open func getAt(_ index: Int32) -> JObject! {
        return self.list.objectArray[index]
    }
    

    open func addDefault() {
    }
    

    open func addObject(_ anyType: JObject!) {
        self.list.add(anyType)
    }
    

    open func add(_ cacheableInterface: CacheableInterface!) {
        self.list.add((cacheableInterface as? JObject))
    }
    

    open func addArray(_ cacheableInterfaces: JArray<CacheableInterface?>!) {
        jThrow(JException("Exception", "No Imple"))
    }
    

    open func clear() {
        self.index = 0
    }
}

