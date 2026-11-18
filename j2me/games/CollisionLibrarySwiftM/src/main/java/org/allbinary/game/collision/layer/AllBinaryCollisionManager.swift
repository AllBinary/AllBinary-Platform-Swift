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
// package org.allbinary.game.collision.layer

import J2SEForSwiftLibrary
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.layer.LayerManager

open class AllBinaryCollisionManager: JObject {
    fileprivate static var allBinaryCollisionManager: AllBinaryCollisionManager! = AllBinaryCollisionManager()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> AllBinaryCollisionManager! {
        return AllBinaryCollisionManager.allBinaryCollisionManager
    }
    

    open func process(_ layerManager: LayerManager!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!, _ startIndex: Int32) {
        let size: Int32 = layerManager.getSize()
        do {
            var index: Int32 = startIndex &+ 1
            while (index < size) {
                defer { index &+= 1 }
            let collidableInterfaceCompositeInterface2: CollidableInterfaceCompositeInterface! = (layerManager.getLayerAt(index) as! CollidableInterfaceCompositeInterface)
            self.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
            }
        }
    }
    

    fileprivate func collide(_ layerManager: LayerManager!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!, _ collidableInterfaceCompositeInterface2: CollidableInterfaceCompositeInterface!) {
        let collidableBase2: CollidableBaseBehavior! = collidableInterfaceCompositeInterface2.getCollidableInferface()
        let collidableBase: CollidableBaseBehavior! = collidableInterfaceCompositeInterface.getCollidableInferface()
        if (collidableBase2.isCollidable((collidableInterfaceCompositeInterface as! CollidableCompositeLayer))) {
            if (collidableBase.isCollisionInterface((collidableInterfaceCompositeInterface as! CollidableCompositeLayer), collidableInterfaceCompositeInterface2)) {
                collidableBase.collideInterface((collidableInterfaceCompositeInterface as! CollidableCompositeLayer), collidableInterfaceCompositeInterface2)
                collidableBase2.collideInterface((collidableInterfaceCompositeInterface as! CollidableCompositeLayer), collidableInterfaceCompositeInterface)
            }
        }
    }
}

