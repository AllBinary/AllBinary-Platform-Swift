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
// package org.allbinary.android.input.motion

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.time.TimeDelayHelper

open class AnalogControllerHelper: JObject {
    fileprivate var reduceTimeFactor: Int32 = 0
    fileprivate var SCALE_VALUE: Int32 = 0
    fileprivate var rightTimeElapsedHelper: TimeDelayHelper! = nil
    fileprivate var leftTimeElapsedHelper: TimeDelayHelper! = nil
    fileprivate var downTimeElapsedHelper: TimeDelayHelper! = nil
    fileprivate var upTimeElapsedHelper: TimeDelayHelper! = nil

    private func initFields() {
    
    self.SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE
    self.rightTimeElapsedHelper = TimeDelayHelper(0)
    self.leftTimeElapsedHelper = TimeDelayHelper(0)
    self.downTimeElapsedHelper = TimeDelayHelper(0)
    self.upTimeElapsedHelper = TimeDelayHelper(0)
    }
    

    public init(_ reduceTimeFactor: Int32) {
        super.init()
        self.initFields()
        self.reduceTimeFactor = reduceTimeFactor
    }
    

    open func right(_ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!, _ xAnalogValue: Int32) {
        self.rightTimeElapsedHelper.delay = ((self.SCALE_VALUE &- xAnalogValue) >> self.reduceTimeFactor)
        if (self.rightTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right()
        }
    }
    

    open func left(_ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!, _ xAnalogValue: Int32) {
        self.leftTimeElapsedHelper.delay = ((self.SCALE_VALUE &+ xAnalogValue) >> self.reduceTimeFactor)
        if (self.leftTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left()
        }
    }
    

    open func up(_ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!, _ xAnalogValue: Int32) {
        self.upTimeElapsedHelper.delay = ((self.SCALE_VALUE &- xAnalogValue) >> self.reduceTimeFactor)
        if (self.upTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up()
        }
    }
    

    open func down(_ collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer!, _ xAnalogValue: Int32) {
        self.downTimeElapsedHelper.delay = ((self.SCALE_VALUE &+ xAnalogValue) >> self.reduceTimeFactor)
        if (self.downTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down()
        }
    }
}

