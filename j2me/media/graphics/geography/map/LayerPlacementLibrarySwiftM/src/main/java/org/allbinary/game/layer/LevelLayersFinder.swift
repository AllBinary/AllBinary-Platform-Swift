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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary
// import java.util.Enumeration
// import org.allbinary.layer.Layer
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.EnumerationUtil

open class LevelLayersFinder: JObject {
    fileprivate static let instance: LevelLayersFinder! = LevelLayersFinder()
    fileprivate var enumerationUtil: EnumerationUtil! = nil

    private func initFields() {
    self.enumerationUtil = EnumerationUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LevelLayersFinder! {
        return LevelLayersFinder.instance
    }
    

    @discardableResult open func get(_ hashtable: ABHashtable!) -> BasicArrayList! {
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        let list: BasicArrayList! = BasicArrayListD()
        let enumeration: Enumeration! = hashtable.keys()
        var layerHashtableCanBeNull: ABHashtable! = nil
        var integerCanBeNull: Int32! = nil
        var cachedIntegerCanBeNull: Int32! = nil
        while (self.enumerationUtil.hasMoreElements(enumeration)) {
            layerHashtableCanBeNull = (hashtable.get((self.enumerationUtil.nextElement(enumeration) as! JObject)) as! ABHashtable)
            integerCanBeNull = jUnboxValue(layerHashtableCanBeNull.get((Layer.ID as! JObject)), Int32.self)
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(integerCanBeNull.intValue())
            if (!list.contains(jBoxValue(cachedIntegerCanBeNull))) {
                list.add(jBoxValue(cachedIntegerCanBeNull))
            }
        }
        return list
    }
}

