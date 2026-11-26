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
// package org.allbinary.game.ai

import J2SEForSwiftLibrary
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class ArtificialIntelligenceInterfaceFactoryInterfaceFactory: JObject {
    fileprivate static var SINGLETON: ArtificialIntelligenceInterfaceFactoryInterfaceFactory! = ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.list = BasicArrayListUtil.getInstance().getImmutableInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func clear() {
        self.list = BasicArrayListD()
    }
    

    @discardableResult open class func getInstance() -> ArtificialIntelligenceInterfaceFactoryInterfaceFactory! {
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON
    }
    

    @discardableResult open func getInstanceFromCollection(_ hashtable: ABHashtable!) -> ArtificialIntelligenceInterfaceFactoryInterface! {
        let typeInteger: Int32! = jUnboxValue(hashtable.get(jBoxValue(BasicAI.ID)), Int32.self)
        let type: Int32 = typeInteger.intValue()
        let artificialIntelligenceInterfaceFactoryInterface: ArtificialIntelligenceInterfaceFactoryInterface! = (self.list.objectArray[type &- 1] as Any as? ArtificialIntelligenceInterfaceFactoryInterface)
        return artificialIntelligenceInterfaceFactoryInterface
    }
    

    open func add(_ artificialIntelligenceInterfaceFactoryInterface: ArtificialIntelligenceInterfaceFactoryInterface!) {
        self.list.add((artificialIntelligenceInterfaceFactoryInterface as? JObject))
    }
}

