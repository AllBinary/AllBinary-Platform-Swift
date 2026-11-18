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

open class ExplosionResources: JObject {
    fileprivate static let instance: ExplosionResources! = ExplosionResources()
    public var EXPLOSION_90_RESOURCE: String! = nil
    public var EXPLOSION_60_RESOURCE: String! = nil
    public var HALF_EXPLOSION_RESOURCE: String! = nil
    public var THIRD_EXPLOSION_RESOURCE: String! = nil

    private func initFields() {
    self.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png"
    self.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png"
    self.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png"
    self.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png"
    }
    

    @discardableResult open class func getInstance() -> ExplosionResources! {
        return ExplosionResources.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

