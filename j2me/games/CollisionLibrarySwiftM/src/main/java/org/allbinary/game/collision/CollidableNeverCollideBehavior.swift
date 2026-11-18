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

open class CollidableNeverCollideBehavior: CollidableBaseBehavior {
    

    public override init(_ isCollidable: Bool) {
        super.init(isCollidable)
    }
    

    @discardableResult open override func isCollision(_ ownerLayer: CollidableCompositeLayer!, _ allbinaryCollidableLayer: CollidableCompositeLayer!) -> Bool {
        return false
    }
    

    open override func collide(_ ownerLayer: CollidableCompositeLayer!, _ allbinaryCollidableLayer: CollidableCompositeLayer!) {
    }
    

    open override func collideInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) {
    }
    

    @discardableResult open override func isCollisionInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) -> Bool {
        return false
    }
}

