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
// package org.allbinary.game.combat.destroy

import J2SEForSwiftLibrary
// import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool
// import org.allbinary.game.combat.destroy.event.DestroyedEvent
// import org.allbinary.game.combat.destroy.event.DestroyedEventHandler
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.BasicLayerProcessor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

open class DestroyedLayerProcessor: BasicLayerProcessor {
    fileprivate static var DESTROYED_LAYER_PROCESSOR: BasicLayerProcessor! = BasicLayerProcessor.NULL_LAYER_PROCESSOR
    

    public override init() {
        super.init()
    }
    

    open class func `init`() {
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = DestroyedLayerProcessor()
    }
    

    @discardableResult open class func getInstance() -> BasicLayerProcessor! {
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR
    }
    

    open override func process(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let list: BasicArrayList! = self.getList()
        let size: Int32 = list.size()
        let destroyedEventHandler: DestroyedEventHandler! = DestroyedEventHandler.getInstance()
        let destroyEventCircularStaticPool: DestroyEventCircularStaticPool! = DestroyEventCircularStaticPool.getInstance()
        var destroyedEvent: DestroyedEvent! = nil
        var layerInterface: AllBinaryLayer! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let layerInterfaceCanBeNull: JObject! = list.objectArray[index]
            if (layerInterfaceCanBeNull != nil) {
                layerInterface = (layerInterfaceCanBeNull as! AllBinaryLayer)
                allBinaryLayerManager.remove(layerInterface)
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface)
                destroyedEventHandler.fireEvent(destroyedEvent)
            } else {
                _ = CommonStrings.getInstance()
            }
            }
        }
        list.clear()
    }
}

