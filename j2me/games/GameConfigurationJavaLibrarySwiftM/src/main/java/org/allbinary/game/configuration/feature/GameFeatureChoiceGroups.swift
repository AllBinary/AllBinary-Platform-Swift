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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

open class GameFeatureChoiceGroups: JObject {
    fileprivate static var gameFeatureChoiceGroupsExclusive: GameFeatureChoiceGroups! = GameFeatureChoiceGroups()
    fileprivate static var gameFeatureChoiceGroupsMultiple: GameFeatureChoiceGroups! = GameFeatureChoiceGroups()
    fileprivate var hashtable: ABHashtable! = nil

    private func initFields() {
    self.hashtable = StdUtil.getInstance().createHashtable()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getExclusiveInstance() -> GameFeatureChoiceGroups! {
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive
    }
    

    @discardableResult open class func getMultipleInstance() -> GameFeatureChoiceGroups! {
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple
    }
    

    @discardableResult open func get() -> ABHashtable! {
        return self.hashtable
    }
    

    open func add(_ name: String!, _ list: BasicArrayList!) {
        self.hashtable.put(jBoxString(name), list)
    }
}

