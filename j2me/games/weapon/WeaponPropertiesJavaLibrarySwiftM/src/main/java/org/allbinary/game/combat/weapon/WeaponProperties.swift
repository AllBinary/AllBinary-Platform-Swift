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
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

open class WeaponProperties: SimpleWeaponProperties {
    public static let NULL_WEAPON_PROPERTIES: WeaponProperties! = WeaponProperties(0, 0, 0, 0, Int16(truncatingIfNeeded: 0))
    fileprivate static var messageSent: Bool = false
    fileprivate static let DAMAGE: String! = "Damage: "
    fileprivate static let RANGE: String! = "Range: "
    fileprivate static let RELOAD: String! = "Reload: "
    fileprivate var reloadTime: Int64 = 0
    fileprivate var targetingTime: Int64 = 0
    fileprivate var speed: BasicDecimal! = nil
    fileprivate var MAX: Int64 = 0
    fileprivate var ZERO: Int16 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.reloadTime = 0
    self.targetingTime = 0
    self.speed = BasicDecimal.ZERO_BIGDECIMAL
    self.MAX = 10240
    self.ZERO = 0
    }
    

    public init(_ reloadTime: Int64, _ targetingTime: Int64, _ speed: Int64, _ damage: Int32, _ dissipation: Int16) {
        super.init()
        self.initFields()
        if (speed < self.MAX && speed != 0 && !WeaponProperties.messageSent) {
            let MESSAGE: String! = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            let commonStrings: CommonStrings! = CommonStrings.getInstance()
            PreLogUtil.put(StringMaker().append(MESSAGE).appendlong(speed).toString(), self, commonStrings.CONSTRUCTOR)
            WeaponProperties.messageSent = true
        }
        self.setReloadTime(reloadTime)
        self.setTargetingTime(targetingTime)
        self.setDamage(damage)
        self.setDissipation(dissipation)
        self.setSpeed(BasicDecimal(speed))
        if (Int32(dissipation) != Int32(self.ZERO)) {
            let unscaledDamage: Int64 = self.speed.getUnscaled() &* Int64(truncatingIfNeeded: damage)
            let scaledDissipation: Int32 = Int32(Int32(truncatingIfNeeded: dissipation)) &* self.speed.getScaledFactorValue()
            let value: Int64 = (unscaledDamage / Int64(truncatingIfNeeded: scaledDissipation))
            self.setRange(Int32(truncatingIfNeeded: (value &* 9)) / 10)
        }
    }
    

    fileprivate func setReloadTime(_ reloadTime: Int64) {
        self.reloadTime = reloadTime
    }
    

    @discardableResult open func getReloadTime() -> Int64 {
        return self.reloadTime
    }
    

    fileprivate func setTargetingTime(_ targetingTime: Int64) {
        self.targetingTime = targetingTime
    }
    

    @discardableResult open func getTargetingTime() -> Int64 {
        return self.targetingTime
    }
    

    @discardableResult open func getSpeed() -> BasicDecimal! {
        return self.speed
    }
    

    open func setSpeed(_ speed: BasicDecimal!) {
        self.speed = speed
    }
    

    @discardableResult open func getDamageI(_ range: Int32) -> Int32 {
        return self.getDamage() &- ((Int32(Int32(truncatingIfNeeded: self.getDissipation())) &* range) / self.speed.getScaled())
    }
    

    @discardableResult open func toStringArray() -> JArray<String?>! {
        var index: Int32 = 0
        let stringArray: JArray<String?>! = JArray<String?>(3, nil)
        let stringBuffer: StringMaker! = StringMaker()
        stringArray[jPostIncrement(&index)] = stringBuffer.append(WeaponProperties.DAMAGE).appendint(self.getDamage()).toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[jPostIncrement(&index)] = stringBuffer.append(WeaponProperties.RANGE).appendint(self.getRange()).toString()
        stringBuffer.delete(0, stringBuffer.length())
        stringArray[jPostIncrement(&index)] = stringBuffer.append(WeaponProperties.RELOAD).appendlong(self.getReloadTime()).toString()
        return stringArray
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(WeaponProperties.DAMAGE).appendint(self.getDamage())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties.RANGE).appendint(self.getRange())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(WeaponProperties.RELOAD).appendlong(self.getReloadTime())
        return stringBuffer.toString()
    }
}

