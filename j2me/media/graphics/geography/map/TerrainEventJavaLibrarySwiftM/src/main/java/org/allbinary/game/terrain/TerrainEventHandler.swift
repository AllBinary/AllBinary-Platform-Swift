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
// package org.allbinary.game.terrain

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class TerrainEventHandler: BasicEventHandler {
    fileprivate static var hashtable: ABHashtable! = StdUtil.getInstance().NULL_TABLE
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.list = BasicArrayListD()
    }
    

    open class func `init`() {
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable()
    }
    

    @discardableResult open class func getInstance(_ anyType: JObject!) -> TerrainEventHandler! {
        var eventHandlerCanBeNull: JObject! = TerrainEventHandler.hashtable.get(anyType)
        if (eventHandlerCanBeNull == nil) {
            eventHandlerCanBeNull = TerrainEventHandler()
            TerrainEventHandler.hashtable.put(anyType, eventHandlerCanBeNull)
        }
        return (eventHandlerCanBeNull as! TerrainEventHandler)
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func addListener(_ terrainEventListener: TerrainEventListener!) {
        if (!self.list.contains(terrainEventListener)) {
            self.list.add(terrainEventListener)
        }
    }
    

    open override func removeAllListeners() {
        self.list.clear()
        super.removeAllListeners()
    }
    

    open override func removeListener(_ eventListenerInterface: EventListenerInterface!) {
        self.list.remove((eventListenerInterface as? JObject))
        super.removeListener(eventListenerInterface)
    }
    

    open override func fireEvent(_ eventObject: AllBinaryEventObject!) {
        do {
            var index: Int32 = self.list.size()
            while (jPreDecrement(&index) >= 0) {
            do {
                let terrainEventListener: TerrainEventListener! = (self.list.get(index) as! TerrainEventListener)
                terrainEventListener.onTerrainEvent((eventObject as! TerrainEvent))
            } /* catch (Exception e): a thrown Java exception stops the program */
            }
        }
        super.fireEvent(eventObject)
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let terrainEventListenerInterface: TerrainEventListenerInterface! = (eventListenerInterface as Any as? TerrainEventListenerInterface)
        terrainEventListenerInterface.onTerrainEvent((eventObject as! TerrainEvent))
    }
}

