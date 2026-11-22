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
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.collision.CollisionType
// import org.allbinary.game.collision.CollisionTypeFactory
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.pickup.PickedUpLayerInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil

open class CollidableCharacterNoDamageBehavior: CollidableDestroyableDamageableBehavior {
    

    public override init(_ collidable: Bool) {
        super.init(collidable)
    }
    

    open override func collide(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableCompositeLayer!) {
        let collisionTypeFactory: CollisionTypeFactory! = CollisionTypeFactory.getInstance()
        let collisionType: CollisionType! = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer)
        if (collisionType === collisionTypeFactory.PICKUP) {
            let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (ownerLayer as! CollidableDestroyableDamageableLayer)
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer((collidableInterfaceCompositeInterface as Any as? PickedUpLayerInterface))
        } else {
        }
    }
    

    open override func collideInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
    }
}

