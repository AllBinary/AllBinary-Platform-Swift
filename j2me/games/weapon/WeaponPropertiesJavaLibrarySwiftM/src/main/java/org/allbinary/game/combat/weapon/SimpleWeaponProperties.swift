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
// package org.allbinary.game.combat.weapon

import J2SEForSwiftLibrary

open class SimpleWeaponProperties: JObject {
    fileprivate var damage: Int32 = 0
    fileprivate var dissipation: Int16 = 0
    fileprivate var range: Int32 = 0

    private func initFields() {
    self.damage = 0
    self.dissipation = 0
    self.range = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func set(_ simpleWeaponProperties: SimpleWeaponProperties!) {
        self.setDamage(simpleWeaponProperties.getDamage())
        self.setDissipation(simpleWeaponProperties.getDissipation())
        self.setRange(simpleWeaponProperties.getRange())
    }
    

    open func setDamage(_ damage: Int32) {
        self.damage = damage
    }
    

    @discardableResult open func getDamage() -> Int32 {
        return self.damage
    }
    

    open func setDissipation(_ dissipation: Int16) {
        self.dissipation = dissipation
    }
    

    @discardableResult open func getDissipation() -> Int16 {
        return self.dissipation
    }
    

    @discardableResult open func getRange() -> Int32 {
        return self.range
    }
    

    open func setRange(_ range: Int32) {
        self.range = range
    }
}

