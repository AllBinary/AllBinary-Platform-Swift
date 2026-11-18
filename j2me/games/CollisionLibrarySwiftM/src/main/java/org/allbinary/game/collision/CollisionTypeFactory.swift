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
// package org.allbinary.game.collision

import J2SEForSwiftLibrary

open class CollisionTypeFactory: JObject {
    fileprivate static var SINGLETON: CollisionTypeFactory! = CollisionTypeFactory()
    public var NONE: CollisionType! = nil
    public var DAMAGE: CollisionType! = nil
    public var PICKUP: CollisionType! = nil
    public var COLLISION: CollisionType! = nil

    private func initFields() {
    self.NONE = CollisionType("None")
    self.DAMAGE = CollisionType("Damage")
    self.PICKUP = CollisionType("Pickup")
    self.COLLISION = CollisionType("Collision")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CollisionTypeFactory! {
        return CollisionTypeFactory.SINGLETON
    }
}

