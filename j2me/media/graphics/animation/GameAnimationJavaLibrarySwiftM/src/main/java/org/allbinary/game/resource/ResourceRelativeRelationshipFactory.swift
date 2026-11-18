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
// package org.allbinary.game.resource

import J2SEForSwiftLibrary
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class ResourceRelativeRelationshipFactory: JObject, ResourceRelativeRelationshipFactoryInterface {
    fileprivate var basicArrayListUtil: BasicArrayListUtil! = nil
    fileprivate var hashtable: ABHashtable! = nil
    fileprivate var initialized: Bool = false

    private func initFields() {
    self.basicArrayListUtil = BasicArrayListUtil.getInstance()
    self.hashtable = StdUtil.getInstance().createHashtable()
    self.initialized = false
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ level: Int32) {
        self.setInitialized(true)
    }
    

    @discardableResult open func getResourceRelativeRelationshipList(_ resource: String!) -> BasicArrayList! {
        let listCanBeNull: JObject! = self.hashtable.get(jBoxString(resource))
        if (listCanBeNull == nil) {
            return self.basicArrayListUtil.getImmutableInstance()
        }
        return (listCanBeNull as! BasicArrayList)
    }
    

    open func addResourceRelativeRelationship(_ resource: String!, _ hardPoint: RelativeRelationship!) {
        var list: BasicArrayList! = self.getResourceRelativeRelationshipList(resource)
        if (list === self.basicArrayListUtil.getImmutableInstance()) {
            list = BasicArrayListD()
        }
        list.add(hardPoint)
        self.hashtable.put(jBoxString(resource), list)
    }
    

    @discardableResult open func isLoadingLevel(_ level: Int32) -> Bool {
        return false
    }
    

    @discardableResult open func isFeature() -> Bool {
        return false
    }
    

    open func setInitialized(_ initialized: Bool) {
        self.initialized = initialized
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return self.initialized
    }
}

