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
// package org.allbinary.game.layer.special

import J2SEForSwiftLibrary
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.combat.damage.DamageUtil
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.logic.communication.log.ForcedLogUtil

open class CollidableDestroyableDamageableBehavior: CollidableBaseBehavior {
    public var damageUtil: DamageUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.damageUtil = DamageUtil.getInstance()
    }
    

    public override init(_ collidable: Bool) {
        super.init(collidable)
        self.initFields()
    }
    

    @discardableResult open override func isCollision(_ ownerLayer: CollidableCompositeLayer!, _ collisionLayer: CollidableCompositeLayer!) -> Bool {
        if (ownerLayer.getGroupInterface()[0] !== collisionLayer.getGroupInterface()[0]) {
            return super.isCollision(ownerLayer, collisionLayer)
        }
        return false
    }
    

    open override func collide(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableCompositeLayer!) {
        let ownerCollidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (ownerLayer as! CollidableDestroyableDamageableLayer)
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (collidableInterfaceCompositeInterface as! CollidableDestroyableDamageableLayer)
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0)
    }
    

    @discardableResult open override func isCollisionInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) -> Bool {
        ForcedLogUtil.log("No Longer Used", self)
        return false
    }
    

    open override func collideInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) {
        ForcedLogUtil.log("No Longer Used", self)
    }
}

