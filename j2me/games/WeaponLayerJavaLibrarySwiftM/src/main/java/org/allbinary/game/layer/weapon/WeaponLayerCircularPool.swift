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
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerCircularPool

open class WeaponLayerCircularPool: AllBinaryLayerCircularPool {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstanceWeaponLayer(_ sourceLayerInterface: AllBinaryLayer!, _ x: Int32, _ y: Int32, _ z: Int32, _ angle: Int32, _ otherAngle: Int32, _ weaponProperties: WeaponProperties!, _ scoreable: ScoreableInterface!) -> WeaponLayer! {
        let weaponLayer: WeaponLayer! = (super.getNextInstance() as! WeaponLayer)
        weaponLayer.initXYZ(x, y, z)
        weaponLayer.`init`(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
    }
}

