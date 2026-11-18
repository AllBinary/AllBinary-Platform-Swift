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
// package org.allbinary.resources

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

open class KeyValueFactory: JObject {
    fileprivate static let instance: KeyValueFactory! = KeyValueFactory()
    public var MAP: ABHashtable! = nil

    private func initFields() {
    self.MAP = StdUtil.getInstance().createHashtable()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> KeyValueFactory! {
        return KeyValueFactory.instance
    }
    

    @discardableResult open func get(_ key: String!) -> String! {
        if (!self.MAP.containsKey(jBoxString(key))) {
            return key
        }
        return jUnboxString(self.MAP.get(jBoxString(key)))
    }
}

