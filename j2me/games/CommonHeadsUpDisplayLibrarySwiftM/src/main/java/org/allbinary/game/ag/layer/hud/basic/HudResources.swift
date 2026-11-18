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
// package org.allbinary.game.ag.layer.hud.basic

import J2SEForSwiftLibrary

open class HudResources: JObject {
    fileprivate static let instance: HudResources! = HudResources()
    public var RESOURCE_LIFE: String! = nil
    public var RESOURCE_HEALTH: String! = nil

    private func initFields() {
    self.RESOURCE_LIFE = "/hud_life_10_by_10.png"
    self.RESOURCE_HEALTH = "/hud_health_10_by_10.png"
    }
    

    @discardableResult open class func getInstance() -> HudResources! {
        return HudResources.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

