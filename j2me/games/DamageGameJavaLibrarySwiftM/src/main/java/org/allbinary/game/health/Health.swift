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
// package org.allbinary.game.health

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

open class Health: JObject, HealthInterface {
    public static let NULL_HEALTH: Health! = Health(0)
    public static let NAME: String! = "Health Resource"
    fileprivate static let HEALTH_LABEL: String! = "Health: "
    fileprivate static let MAX_HEALTH_LABEL: String! = " Max: "
    fileprivate var health: Int32 = 0
    fileprivate var maxHealth: Int32 = 0
    fileprivate var healthListenerInterface: HealthListenerInterface! = nil

    private func initFields() {
    self.health = 0
    self.maxHealth = 0
    self.healthListenerInterface = NullHealthListener.NULL_HEALTH_LISTENER
    }
    

    public init(_ maxHealth: Int32) {
        super.init()
        self.initFields()
        self.setMaxHealth(maxHealth)
        self.setHealth(maxHealth)
    }
    

    open func heal(_ ahealth: Int32) {
        let newHealth: Int32 = self.getHealth() &+ ahealth
        if (newHealth > self.getMaxHealth()) {
            self.setHealth(self.getMaxHealth())
        } else {
            self.setHealth(newHealth)
        }
    }
    

    open func healMax() {
        self.setHealth(self.getMaxHealth())
    }
    

    @discardableResult open func isDamaged() -> Bool {
        if (self.getHealth() != self.getMaxHealth()) {
            return true
        } else {
            return false
        }
    }
    

    open func damage(_ ahealth: Int32) {
        if (ahealth < 0) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append("******* Trying to heal when damaging. Damage: ")
            stringBuffer.appendint(ahealth)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(self.toString())
            ForcedLogUtil.log(stringBuffer.toString(), self)
            return
        }
        let health: Int32 = self.getHealth() &- ahealth
        self.setHealth(health)
    }
    

    @discardableResult open func isAlive() -> Bool {
        if (self.getHealth() <= 0) {
            return false
        } else {
            return true
        }
    }
    

    @discardableResult open func getMaxHealth() -> Int32 {
        return self.maxHealth
    }
    

    open func setMaxHealth(_ maxHealth: Int32) {
        self.maxHealth = maxHealth
    }
    

    open func setHealth(_ health: Int32) {
        if (health > self.getMaxHealth()) {
            self.health = self.getMaxHealth()
        } else if (health < 0) {
            self.health = 0
        } else {
            self.health = health
        }
        if (self.healthListenerInterface != nil) {
            self.healthListenerInterface.onHealthChange()
        }
    }
    

    @discardableResult open func getHealth() -> Int32 {
        return self.health
    }
    

    open func addListener(_ healthGraphic: HealthListenerInterface!) {
        self.healthListenerInterface = healthGraphic
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(Health.HEALTH_LABEL)
        stringBuffer.appendint(self.health)
        stringBuffer.append(Health.MAX_HEALTH_LABEL)
        stringBuffer.appendint(self.maxHealth)
        return stringBuffer.toString()
    }
}

