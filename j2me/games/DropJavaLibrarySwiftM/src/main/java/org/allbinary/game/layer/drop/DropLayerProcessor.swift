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
// package org.allbinary.game.layer.drop

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.BasicLayerProcessor
// import org.allbinary.util.BasicArrayList

open class DropLayerProcessor: BasicLayerProcessor {
    fileprivate static let LAYER_PROCESSOR: BasicLayerProcessor! = DropLayerProcessor()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> BasicLayerProcessor! {
        return DropLayerProcessor.LAYER_PROCESSOR
    }
    

    open override func process(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let list: BasicArrayList! = self.getList()
        let size: Int32 = list.size()
        var layerInterface: AllBinaryLayer! = nil
        var dropLayerInterface: DropLayerInterface! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            layerInterface = (list.objectArray[index] as! AllBinaryLayer)
            dropLayerInterface = (layerInterface as Any as? DropLayerInterface)
            layerInterface = (dropLayerInterface.getDroppedLayer() as! AllBinaryLayer)
            allBinaryLayerManager.append(layerInterface)
            }
        }
        list.clear()
    }
}

