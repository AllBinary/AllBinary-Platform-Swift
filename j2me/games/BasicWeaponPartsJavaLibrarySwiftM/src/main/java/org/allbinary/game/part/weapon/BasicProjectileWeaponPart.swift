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
// package org.allbinary.game.part.weapon

import J2SEForSwiftLibrary
// import org.allbinary.animation.Animation
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.layer.weapon.WeaponLayer
// import org.allbinary.game.layer.weapon.WeaponLayerCircularPool
// import org.allbinary.game.score.NoScoreable
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class BasicProjectileWeaponPart: BasicWeaponPart {
    fileprivate var weaponLayerCircularStaticPool: WeaponLayerCircularPool! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    @discardableResult open class func createBasicProjectileWeaponPart(_ animationInterface: Animation!, _ weaponLayerCircularStaticPool: WeaponLayerCircularPool!) -> BasicProjectileWeaponPart! {
        return BasicProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)
    }
    

    public init(_ animationInterface: Animation!, _ sourceLayerInterface: AllBinaryLayer!, _ weaponLayerCircularStaticPool: WeaponLayerCircularPool!, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!, _ relativeRelationship: RelativeRelationship!) {
        super.init(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.initFields()
        self.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    }
    

    open override func processScore(_ allbinaryLayerManager: AllBinaryLayerManager!, _ angle: Int16, _ otherAngle: Int16, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!) {
        let weaponLayer: WeaponLayer! = self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(self.getOwnerLayerInterface(), self.relativeRelationship.getX(), self.relativeRelationship.getY(), self.relativeRelationship.getZ(), Int32(truncatingIfNeeded: angle), Int32(truncatingIfNeeded: otherAngle), weaponProperties, scoreableInterface)
        allbinaryLayerManager.append(weaponLayer)
    }
}

