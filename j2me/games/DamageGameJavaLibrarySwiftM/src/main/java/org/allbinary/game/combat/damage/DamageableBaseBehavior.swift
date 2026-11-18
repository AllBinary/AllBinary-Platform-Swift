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

open class DamageableBaseBehavior: JObject, DamageableInterface {
    fileprivate static let instance: DamageableBaseBehavior! = DamageableBaseBehavior()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> DamageableBaseBehavior! {
        return DamageableBaseBehavior.instance
    }
    

    @discardableResult open func getName() -> String! {
        return JObject.className(self)
    }
    

    open func damage(_ damage: Int32, _ damageType: Int32) {
    }
    

    @discardableResult open func getDamage(_ damageType: Int32) -> Int32 {
        return 6000
    }
}

