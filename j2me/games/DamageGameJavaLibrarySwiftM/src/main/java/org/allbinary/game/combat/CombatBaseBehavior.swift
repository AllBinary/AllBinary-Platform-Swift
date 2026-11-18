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
// package org.allbinary.game.combat

import J2SEForSwiftLibrary
// import org.allbinary.game.combat.damage.DamageableBaseBehavior
// import org.allbinary.game.combat.destroy.DestroyableBaseBehavior

open class CombatBaseBehavior: JObject {
    public static let NULL_COMBAT_BEHAVIOR: CombatBaseBehavior! = CombatBaseBehavior(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance())
    fileprivate var damageableBaseBehavior: DamageableBaseBehavior! = nil
    fileprivate var destroyableBaseBehavior: DestroyableBaseBehavior! = nil
    fileprivate var readyForExplosion: Bool = false

    private func initFields() {
    
    
    self.readyForExplosion = false
    }
    

    public init(_ damageableBaseBehavior: DamageableBaseBehavior!, _ destroyableBaseBehavior: DestroyableBaseBehavior!) {
        super.init()
        self.initFields()
        self.damageableBaseBehavior = damageableBaseBehavior
        self.destroyableBaseBehavior = destroyableBaseBehavior
    }
    

    @discardableResult open func getDamageableBaseBehavior() -> DamageableBaseBehavior! {
        return self.damageableBaseBehavior
    }
    

    @discardableResult open func getDestroyableBaseBehavior() -> DestroyableBaseBehavior! {
        return self.destroyableBaseBehavior
    }
    

    @discardableResult public func isReadyForExplosion() -> Bool {
        return self.readyForExplosion
    }
    

    public func setReadyForExplosion(_ readyForExplosion: Bool) {
        self.readyForExplosion = readyForExplosion
    }
}

