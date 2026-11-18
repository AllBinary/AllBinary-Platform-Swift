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
// package org.allbinary.game.physics.acceleration

import J2SEForSwiftLibrary
// import org.allbinary.game.physics.velocity.BasicVelocityProperties

open class GravityUtil: JObject {
    fileprivate static let instance: GravityUtil! = GravityUtil()
    public var GAME_GRAVITY_VELOCITY: Int32 = 0
    public var MAX_GAME_VELOCITY: Int32 = 0

    private func initFields() {
    self.GAME_GRAVITY_VELOCITY = 1800
    self.MAX_GAME_VELOCITY = 18000
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GravityUtil! {
        return GravityUtil.instance
    }
    

    public func process(_ velocityProperties: BasicVelocityProperties!, _ customGravity: Int32) {
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity)
    }
}

