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

open class CollisionHelper: JObject {
    public var sourceLayerInterface: AllBinaryLayer! = nil

    private func initFields() {
    
    }
    

    public init(_ sourceLayerInterface: AllBinaryLayer!) {
        super.init()
        self.initFields()
        self.sourceLayerInterface = sourceLayerInterface
    }
    

    @discardableResult open func isCollidable(_ layerInterface: CollidableCompositeLayer!) -> Bool {
        return true
    }
    

    @discardableResult open func getOwnerLayerInterface() -> AllBinaryLayer! {
        return self.sourceLayerInterface
    }
    

    open func setOwnerLayerInterface(_ sourceLayerInterface: AllBinaryLayer!) {
        self.sourceLayerInterface = sourceLayerInterface
    }
}

