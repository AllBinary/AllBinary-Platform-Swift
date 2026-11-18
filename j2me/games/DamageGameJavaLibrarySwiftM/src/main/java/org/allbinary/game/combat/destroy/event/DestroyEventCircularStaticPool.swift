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
// package org.allbinary.game.combat.destroy.event

import J2SEForSwiftLibrary
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

open class DestroyEventCircularStaticPool: JObject {
    fileprivate static let instance: DestroyEventCircularStaticPool! = DestroyEventCircularStaticPool()
    fileprivate var EVENT_POOL: AllBinaryEventCircularPool! = nil

    private func initFields() {
    self.EVENT_POOL = AllBinaryEventCircularPool(20)
    }
    

    @discardableResult open class func getInstance() -> DestroyEventCircularStaticPool! {
        return DestroyEventCircularStaticPool.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ combatGameCanvas: AllBinaryGameCanvas!) {
        self.EVENT_POOL.initAllBinaryEventCircularPool(DestroyEventFactory(combatGameCanvas))
    }
    

    @discardableResult open func getInstanceForLayer(_ layerInterface: AllBinaryLayer!) -> DestroyedEvent! {
        let destroyedEvent: DestroyedEvent! = (self.EVENT_POOL.getNextInstance() as! DestroyedEvent)
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return destroyedEvent
    }
}

