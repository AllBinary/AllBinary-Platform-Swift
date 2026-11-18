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
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

open class Feature: JObject {
    fileprivate static var hashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
    fileprivate var name: String! = nil

    private func initFields() {
    
    }
    

    public init(_ name: String!) {
        super.init()
        self.initFields()
        self.name = name
        Feature.add(name, self)
        ChangedGameFeatureListener.getInstance().add(self)
    }
    

    @discardableResult open class func getInstance(_ name: String!) -> Feature! {
        return (Feature.hashtable.get(jBoxString(name)) as! Feature)
    }
    

    fileprivate static func add(_ name: String!, _ gameFeature: Feature!) {
        Feature.hashtable.put(jBoxString(name), gameFeature)
    }
    

    @discardableResult open override func toString() -> String! {
        return self.getName()
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
}

