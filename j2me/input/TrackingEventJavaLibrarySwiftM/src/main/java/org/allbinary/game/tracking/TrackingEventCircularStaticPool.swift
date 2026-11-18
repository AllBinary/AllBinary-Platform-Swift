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
// package org.allbinary.game.tracking

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

open class TrackingEventCircularStaticPool: JObject {
    fileprivate static var instance: TrackingEventCircularStaticPool! = TrackingEventCircularStaticPool()
    fileprivate var EVENT_POOL: AllBinaryEventCircularPool! = nil

    private func initFields() {
    self.EVENT_POOL = AllBinaryEventCircularPool(20)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> TrackingEventCircularStaticPool! {
        return TrackingEventCircularStaticPool.instance
    }
    

    open func `init`() {
        self.EVENT_POOL.initAllBinaryEventCircularPool(TrackingEventFactory())
    }
    

    @discardableResult open func getNextInstance(_ layerInterface: AllBinaryLayer!) -> TrackingEvent! {
        let trackingEvent: TrackingEvent! = (self.EVENT_POOL.getNextInstance() as! TrackingEvent)
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return trackingEvent
    }
}

