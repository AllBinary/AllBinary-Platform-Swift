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
// package org.allbinary.game.collision

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.LayerManager
// import org.allbinary.layer.LayerProcessor

open class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer: LayerProcessor {
    

    public init() {
        super.init(OptimizedAllBinaryCollisionLayerManager())
    }
    

    open override func processAt(_ allBinaryLayerManager: AllBinaryLayerManager!, _ layerInterface: AllBinaryLayer!, _ startIndex: Int32) {
        let collidableInterfaceCompositeInterface: CollidableCompositeLayer! = (layerInterface as! CollidableCompositeLayer)
        let collidableBase: CollidableBaseBehavior! = collidableInterfaceCompositeInterface.getCollidableInferface()
        if (collidableBase.isCollidable(collidableInterfaceCompositeInterface)) {
            let layerManager: LayerManager! = self.getLayerManager()
            let size: Int32 = layerManager.getSize()
            var collidableInterfaceCompositeInterface2: CollidableCompositeLayer! = nil
            var collidableBase2: CollidableBaseBehavior! = nil
            do {
                var index: Int32 = startIndex &+ 1
                while (index < size) {
                    defer { index &+= 1 }
                collidableInterfaceCompositeInterface2 = (layerManager.getLayerAt(index) as! CollidableCompositeLayer)
                collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface()
                if (collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) {
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)
                }
                }
            }
        }
    }
    

    @discardableResult open override func isProcessorLayer(_ layerInterface: AllBinaryLayer!) -> Bool {
        if (layerInterface.implmentsCollidableInterface()) {
            return true
        } else {
            return false
        }
    }
}

