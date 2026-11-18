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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.LayerProcessor

open class OptimizedGameInputLayerProcessorForCollidableLayer: LayerProcessor {
    

    public init() {
        super.init(OptimizedGameInputLayerManager())
    }
    

    open override func processAt(_ allBinaryLayerManager: AllBinaryLayerManager!, _ layerInterface: AllBinaryLayer!, _ index: Int32) {
        let gameInputInterface: AllBinaryGameLayer! = (layerInterface as! AllBinaryGameLayer)
        gameInputInterface.processInput(allBinaryLayerManager)
    }
    

    @discardableResult open override func isProcessorLayer(_ layerInterface: AllBinaryLayer!) -> Bool {
        if (layerInterface.implmentsGameInputInterface()) {
            return true
        } else {
            return false
        }
    }
}

