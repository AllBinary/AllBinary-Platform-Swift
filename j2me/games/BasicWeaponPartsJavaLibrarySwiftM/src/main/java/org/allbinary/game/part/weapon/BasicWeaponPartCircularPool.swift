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
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer

open class BasicWeaponPartCircularPool: JObject {
    public static let NULL_BASIC_WEAPON_PART_CIRCULAR_POOL: BasicWeaponPartCircularPool! = BasicWeaponPartCircularPool()
    fileprivate var basicWeaponPart: BasicWeaponPart! = nil

    private func initFields() {
    self.basicWeaponPart = BasicWeaponPart.NULL_BASIC_WEAPON_PART
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`(_ basicWeaponPartFactoryInterface: BasicWeaponPartFactoryInterface!) {
        self.basicWeaponPart = basicWeaponPartFactoryInterface.getInstance()
    }
    

    @discardableResult open func getInstance(_ sourceLayerInterface: AllBinaryLayer!, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!, _ relativeRelationship: RelativeRelationship!) -> BasicWeaponPart! {
        self.basicWeaponPart.`init`(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        return self.basicWeaponPart
    }
}

