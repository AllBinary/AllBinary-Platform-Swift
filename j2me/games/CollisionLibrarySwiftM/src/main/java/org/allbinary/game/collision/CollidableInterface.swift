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
// import org.allbinary.layer.NamedInterface

public protocol CollidableInterface: AnyObject, NamedInterface {
    @discardableResult func isCollidable(_ ownerLayer: CollidableCompositeLayer!) -> Bool
    @discardableResult func isCollision(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableCompositeLayer!) -> Bool
    func collide(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableCompositeLayer!)
    @discardableResult func getCollisionTypeWith(_ layerInterface: AllBinaryLayer!) -> CollisionType!
}


