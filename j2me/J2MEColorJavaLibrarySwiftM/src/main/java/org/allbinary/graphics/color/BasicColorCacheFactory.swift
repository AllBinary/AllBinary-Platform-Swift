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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

open class BasicColorCacheFactory: JObject {
    fileprivate static let instance: BasicColorCacheFactory! = BasicColorCacheFactory()
    fileprivate var hashtable: ABHashtable! = nil

    private func initFields() {
    self.hashtable = StdUtil.getInstance().createHashtable()
    }
    

    @discardableResult open class func getInstance() -> BasicColorCacheFactory! {
        return BasicColorCacheFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func add(_ basicDefaultColor: BasicColor!) {
        self.hashtable.put(jBoxValue(basicDefaultColor.intValue()), basicDefaultColor)
    }
    

    @discardableResult open func getAndOrCreate(_ integer: Int32!) -> BasicColor! {
        var basicColor: BasicColor! = (self.hashtable.get(jBoxValue(integer)) as! BasicColor)
        if (basicColor == nil) {
            basicColor = BasicColorFactory.getInstance().createInstance(integer.intValue())
            self.hashtable.put(jBoxValue(integer), basicColor)
        }
        return basicColor
    }
}

