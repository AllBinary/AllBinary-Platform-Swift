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
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.math.AngleFactory

open class ArcedMultiBeamWeaponPart: BasicWeaponPart {
    fileprivate var weaponLayerCircularStaticPool: WeaponLayerCircularPool! = nil
    fileprivate var total: Int32 = 0
    fileprivate var TOTAL_ANGLE: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.TOTAL_ANGLE = Int32(truncatingIfNeeded: AngleFactory.getInstance().TOTAL_ANGLE)
    }
    

    public init(_ animationInterface: Animation!, _ sourceLayerInterface: AllBinaryLayer!, _ weaponLayerCircularStaticPool: WeaponLayerCircularPool!, _ total: Int32, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!, _ relativeRelationship: RelativeRelationship!) {
        super.init(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.initFields()
        self.total = total
        self.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    }
    

    open override func processScore(_ allbinaryLayerManager: AllBinaryLayerManager!, _ angle: Int16, _ otherAngle: Int16, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!) {
        let increment: Int16 = Int16(truncatingIfNeeded: ((self.total &- 1) / self.TOTAL_ANGLE))
        let minAngle: Int16 = Int16(truncatingIfNeeded: (Int32(Int32(truncatingIfNeeded: angle)) &- ((Int32(Int32(truncatingIfNeeded: increment)) &* self.total) >> 1)))
        var next: Int32 = 0
        var weaponLayer: WeaponLayer! = nil
        do {
            var index: Int32 = 0
            while (index < self.total) {
                defer { index &+= 1 }
            weaponLayer = self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(self.getOwnerLayerInterface(), self.relativeRelationship.getX(), self.relativeRelationship.getY(), 0, (Int32(minAngle) &+ Int32(increment)), Int32(truncatingIfNeeded: otherAngle), weaponProperties, scoreableInterface)
            allbinaryLayerManager.append(weaponLayer)
            next = next &+ Int32(truncatingIfNeeded: increment)
            }
        }
    }
}

