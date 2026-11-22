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
// package org.allbinary.game.layer.weapon

import J2SEForSwiftLibrary
// import org.allbinary.game.collision.CollidableHelperFactory
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.collision.CollisionHelper
// import org.allbinary.game.collision.CollisionType
// import org.allbinary.game.collision.CollisionTypeFactory
// import org.allbinary.game.combat.damage.DamageableInterface
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.NullUtil

open class CollidableWeaponBehavior: CollidableDestroyableDamageableBehavior {
    fileprivate static var NULL_COLLIDABLE_WEAPON_BEHAVIOR: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate var collided: Bool = false
    public var collisionHelper: CollisionHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.collided = false
    
    }
    

    @discardableResult open class func getNullInstance() -> CollidableWeaponBehavior! {
        if (CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR === NullUtil.getInstance().NULL_OBJECT) {
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = CollidableWeaponBehavior(false)
        }
        return (CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR as! CollidableWeaponBehavior)
    }
    

    public override init(_ collidable: Bool) {
        super.init(collidable)
        self.initFields()
        self.setCollided(false)
        self.setCollidable(true)
        self.collisionHelper = CollidableHelperFactory.getInstance()
    }
    

    open func `init`(_ sourceLayerInterface: AllBinaryLayer!) {
        self.setCollided(false)
        self.collisionHelper.setOwnerLayerInterface(sourceLayerInterface)
    }
    

    @discardableResult open override func isCollision(_ ownerLayer: CollidableCompositeLayer!, _ collisionLayer: CollidableCompositeLayer!) -> Bool {
        if (self.collisionHelper.isCollidable(collisionLayer)) {
            if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
                return super.isCollision(ownerLayer, collisionLayer)
            }
        }
        return false
    }
    

    open override func collide(_ ownerLayer: CollidableCompositeLayer!, _ collisionLayer: CollidableCompositeLayer!) {
        super.collide(ownerLayer, collisionLayer)
        self.collided = true
    }
    

    @discardableResult open override func isCollisionInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) -> Bool {
        if (self.collisionHelper.isCollidable((collidableInterfaceCompositeInterface as! CollidableCompositeLayer))) {
            let layerInterface: AllBinaryLayer! = (collidableInterfaceCompositeInterface as! AllBinaryLayer)
            if (ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]) {
                if (self.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true
                }
            }
        }
        return false
    }
    

    open override func collideInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) {
        let ownerDamageableInterface: DamageableInterface! = (ownerLayer as Any as? DamageableInterface)
        let damageableInterface: DamageableInterface! = (collidableInterfaceCompositeInterface as Any as? DamageableInterface)
        self.damageUtil.process(ownerDamageableInterface, damageableInterface)
        self.collided = true
    }
    

    @discardableResult open override func getCollisionTypeWith(_ layerInterface: AllBinaryLayer!) -> CollisionType! {
        return CollisionTypeFactory.getInstance().COLLISION
    }
    

    @discardableResult open func isCollided() -> Bool {
        return self.collided
    }
    

    fileprivate func setCollided(_ collided: Bool) {
        self.collided = collided
    }
}

