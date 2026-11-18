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
// import org.allbinary.math.NoDecimalTrigTable

open class StraightMultiProjectileWeaponPart: BasicWeaponPart {
    fileprivate var weaponLayerCircularStaticPool: WeaponLayerCircularPool! = nil
    fileprivate var total: Int32 = 0
    fileprivate var noDecimalTrigTable: NoDecimalTrigTable! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    }
    

    @discardableResult open class func createStraightMultiProjectileWeaponPart(_ animationInterface: Animation!, _ weaponLayerCircularStaticPool: WeaponLayerCircularPool!) -> StraightMultiProjectileWeaponPart! {
        return StraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)
    }
    

    public init(_ animationInterface: Animation!, _ sourceLayerInterface: AllBinaryLayer!, _ weaponLayerCircularStaticPool: WeaponLayerCircularPool!, _ total: Int32, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!, _ relativeRelationship: RelativeRelationship!) {
        super.init(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.initFields()
        self.total = total
        self.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    }
    

    open override func processScore(_ allbinaryLayerManager: AllBinaryLayerManager!, _ angle: Int16, _ otherAngle: Int16, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!) {
        let sourceLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        let reducedWidth: Int32 = (sourceLayerInterface.getWidth() &* 8 / 10)
        let halfWidth: Int32 = (reducedWidth >> 1)
        let x: Int32 = self.relativeRelationship.getX()
        let y: Int32 = self.relativeRelationship.getY()
        var sine: Int64 = 0
        var beamX: Int32 = 0
        var cosine: Int64 = 0
        var beamY: Int32 = 0
        var weaponLayer: WeaponLayer! = nil
        let increment: Int32 = reducedWidth / (self.total &- 1)
        var next: Int32 = -halfWidth
        do {
            var index: Int32 = 0
            while (index < self.total) {
                defer { index &+= 1 }
            sine = (Int64(truncatingIfNeeded: next) &* self.noDecimalTrigTable.sin(Int32(truncatingIfNeeded: angle)))
            beamX = Int32(truncatingIfNeeded: (sine / Int64(truncatingIfNeeded: self.noDecimalTrigTable.SCALE)))
            cosine = (Int64(truncatingIfNeeded: next) &* self.noDecimalTrigTable.cos(Int32(truncatingIfNeeded: angle)))
            beamY = -Int32(truncatingIfNeeded: (cosine / Int64(truncatingIfNeeded: self.noDecimalTrigTable.SCALE)))
            weaponLayer = self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x &+ beamX, y &+ beamY, 0, Int32(truncatingIfNeeded: angle), Int32(truncatingIfNeeded: otherAngle), weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next = next &+ increment
            }
        }
    }
}

