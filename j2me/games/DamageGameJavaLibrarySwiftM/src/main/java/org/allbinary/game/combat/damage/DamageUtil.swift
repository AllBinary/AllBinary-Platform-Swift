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
// package org.allbinary.game.combat.damage

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker

open class DamageUtil: JObject {
    fileprivate static let instance: DamageUtil! = DamageUtil()
    public var logUtil: LogUtil! = nil
    public var COLLIDE: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.COLLIDE = "collide"
    }
    

    @discardableResult open class func getInstance() -> DamageUtil! {
        return DamageUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func process(_ damageableInterface: DamageableInterface!, _ damageableInterface2: DamageableInterface!) {
        damageableInterface.damage(damageableInterface2.getDamage(0), 0)
    }
    

    open func debugDamage(_ collidableInterfaceCompositeInterface1: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableCompositeLayer!) {
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (collidableInterfaceCompositeInterface as! CollidableDestroyableDamageableLayer)
        let damage: Int32 = collidableDestroyableDamageableLayer.getDamage(0)
        if (damage > 20000) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append("Collision ")
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString())
            stringBuffer.append(" with: ")
            stringBuffer.append(collidableInterfaceCompositeInterface.toString())
            stringBuffer.append(" damage: ")
            stringBuffer.appendint(damage)
            self.logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, self.COLLIDE)
        }
    }
}

