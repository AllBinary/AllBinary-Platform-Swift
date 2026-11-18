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
// package org.allbinary.util

import J2SEForSwiftLibrary
// import java.util.Enumeration
// import jsinterop.annotations.JsType

open class HashtableUtil: JObject {
    fileprivate static let instance: HashtableUtil! = HashtableUtil()
    fileprivate var enumerationUtil: EnumerationUtil! = nil

    private func initFields() {
    self.enumerationUtil = EnumerationUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> HashtableUtil! {
        return HashtableUtil.instance
    }
    

    open func putAll(_ fromHashtable: ABHashtable!, _ hashtable: ABHashtable!) {
        let enumeration: Enumeration! = fromHashtable.keys()
        var keyCanBeNull: JObject! = nil
        var valueCanBeNull: JObject! = nil
        while (self.enumerationUtil.hasMoreElements(enumeration)) {
            keyCanBeNull = self.enumerationUtil.nextElement(enumeration)
            valueCanBeNull = hashtable.get(keyCanBeNull)
            if (valueCanBeNull == nil) {
            } else {
                hashtable.put(keyCanBeNull, valueCanBeNull)
            }
        }
    }
    

    @discardableResult open func getKeysAsArray(_ hashtable: ABHashtable!) -> JArray<JObject?>! {
        let objectArray: JArray<JObject?>! = JArray<JObject?>(hashtable.size(), nil)
        var index: Int32 = 0
        let enumeration: Enumeration! = hashtable.keys()
        while (self.enumerationUtil.hasMoreElements(enumeration)) {
            objectArray[jPostIncrement(&index)] = self.enumerationUtil.nextElement(enumeration)
        }
        return objectArray
    }
    

    @discardableResult open func getKeysAsList(_ hashtable: ABHashtable!) -> BasicArrayList! {
        let list: BasicArrayList! = BasicArrayListS(hashtable.size())
        let enumeration: Enumeration! = hashtable.keys()
        while (self.enumerationUtil.hasMoreElements(enumeration)) {
            list.add(self.enumerationUtil.nextElement(enumeration))
        }
        return list
    }
}

