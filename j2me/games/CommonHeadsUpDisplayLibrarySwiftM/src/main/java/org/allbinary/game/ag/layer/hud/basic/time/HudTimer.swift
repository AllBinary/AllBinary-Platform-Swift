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
// package org.allbinary.game.ag.layer.hud.basic.time

import J2SEForSwiftLibrary
// import org.allbinary.logic.math.PrimitiveLongSingleton
// import org.allbinary.logic.math.PrimitiveLongUtil
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory

open class HudTimer: JObject {
    fileprivate var startTime: Int64 = 0
    fileprivate var hundredthTime: Int64 = 0
    fileprivate var maxTime: Int64 = 0
    fileprivate var modifier: Int64 = 0
    fileprivate var hundrethsString: JArray<UInt16>! = nil
    fileprivate var totalDigits: Int32 = 0
    fileprivate var primitiveLongUtil: PrimitiveLongUtil! = nil
    fileprivate var MAX: JArray<UInt16>! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil

    private func initFields() {
    self.startTime = Int64(truncatingIfNeeded: -1)
    self.hundredthTime = 0
    
    self.modifier = 0
    self.hundrethsString = PrimitiveLongSingleton.getInstance().ZERO
    self.totalDigits = 1
    
    self.MAX = JArray<UInt16>([UInt16(("L" as Unicode.Scalar).value), UInt16(("O" as Unicode.Scalar).value), UInt16(("L" as Unicode.Scalar).value)])
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    }
    

    public init(_ maxTime: Int32) {
        super.init()
        self.initFields()
        self.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime)
        self.maxTime = Int64(truncatingIfNeeded: maxTime)
    }
    

    open func start() {
        self.hundredthTime = 0
        self.startTime = self.gameTickTimeDelayHelper.startTime
    }
    

    @discardableResult open func get() -> Int64 {
        return self.hundredthTime
    }
    

    open func update() {
        let lastLowerTime: Int64 = self.hundredthTime
        var currentTime: Int64 = ((self.modifier &+ Int64(self.gameTickTimeDelayHelper.startTime)) - self.startTime)
        if (currentTime < 0) {
            currentTime = 0
        }
        self.hundredthTime = currentTime / 100
        if (self.hundredthTime >= self.maxTime) {
            if (self.startTime > 0) {
                self.hundrethsString = self.MAX
            }
        } else if (lastLowerTime != self.hundredthTime) {
            self.hundrethsString = self.primitiveLongUtil.getCharArray(Int32(truncatingIfNeeded: self.hundredthTime))
            self.totalDigits = self.primitiveLongUtil.getCurrentTotalDigits()
        }
    }
    

    open func reduce(_ value: Int32) {
        self.modifier = self.modifier &- Int64(truncatingIfNeeded: value)
    }
    

    open func add(_ value: Int32) {
        self.modifier = self.modifier &+ Int64(truncatingIfNeeded: value)
    }
    

    @discardableResult open func getTimeChars() -> JArray<UInt16>! {
        return self.hundrethsString
    }
    

    @discardableResult open func getCurrentTotalDigits() -> Int32 {
        return self.totalDigits
    }
}

