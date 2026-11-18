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
// package org.allbinary.game.layer.pickup

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class PickedUpLayerTypeFactory: JObject {
    fileprivate static let instance: PickedUpLayerTypeFactory! = PickedUpLayerTypeFactory()
    public var NONE: PickedUpLayerType! = nil
    public var BEAM: PickedUpLayerType! = nil
    public var MINE: PickedUpLayerType! = nil
    public var PROJECTILE: PickedUpLayerType! = nil
    public var ENHANCEMENT: PickedUpLayerType! = nil
    public var MORPH: PickedUpLayerType! = nil
    public var PART: PickedUpLayerType! = nil
    public var HEAL: PickedUpLayerType! = nil
    public var LIFE: PickedUpLayerType! = nil
    public var POINTS: PickedUpLayerType! = nil

    private func initFields() {
    self.NONE = PickedUpLayerType(StringUtil.getInstance().NULL_STRING)
    self.BEAM = PickedUpLayerType("BEAM")
    self.MINE = PickedUpLayerType("MINE")
    self.PROJECTILE = PickedUpLayerType("PROJECTILE")
    self.ENHANCEMENT = PickedUpLayerType("Enhancement")
    self.MORPH = PickedUpLayerType("Morph")
    self.PART = PickedUpLayerType("Part")
    self.HEAL = PickedUpLayerType("Heal")
    self.LIFE = PickedUpLayerType("Life")
    self.POINTS = PickedUpLayerType("Points")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PickedUpLayerTypeFactory! {
        return PickedUpLayerTypeFactory.instance
    }
}

