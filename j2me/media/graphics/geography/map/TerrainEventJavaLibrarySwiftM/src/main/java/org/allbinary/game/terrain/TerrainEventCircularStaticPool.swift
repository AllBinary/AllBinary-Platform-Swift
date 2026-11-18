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
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

open class TerrainEventCircularStaticPool: JObject {
    fileprivate static let instance: TerrainEventCircularStaticPool! = TerrainEventCircularStaticPool()
    fileprivate var EVENT_POOL: AllBinaryEventCircularPool! = nil

    private func initFields() {
    self.EVENT_POOL = AllBinaryEventCircularPool(20)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> TerrainEventCircularStaticPool! {
        return TerrainEventCircularStaticPool.instance
    }
    

    open func `init`() {
        self.EVENT_POOL.initAllBinaryEventCircularPool(TerrainEventFactory())
    }
    

    @discardableResult open func getNext(_ basicTerrainInfo: BasicTerrainInfo!) -> TerrainEvent! {
        let trackingEvent: TerrainEvent! = (self.EVENT_POOL.getNextInstance() as! TerrainEvent)
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo)
        return trackingEvent
    }
}

