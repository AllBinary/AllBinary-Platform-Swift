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
// package org.allbinary.logic.math

import J2SEForSwiftLibrary

open class BasicDecimal: JObject {
    public static let ZERO_BIGDECIMAL: BasicDecimal! = BasicDecimal(0)
    fileprivate var units: Int64 = 0
    fileprivate var scaled: Int32 = 0
    fileprivate var factor: Int32 = 0
    fileprivate var factorValue: Int32 = 0

    private func initFields() {
    
    self.scaled = 0
    self.factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
    self.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
    }
    

    @discardableResult open class func createBigDecimal(_ bigDecimal: BasicDecimal!) -> BasicDecimal! {
        return BasicDecimal(bigDecimal.getUnscaled())
    }
    

    public init(_ units: Int64) {
        super.init()
        self.initFields()
        self.units = units
        self.updateScaled()
    }
    

    open func setint(_ value: Int32) {
        self.units = Int64(truncatingIfNeeded: value)
        self.updateScaled()
    }
    

    open func setlong(_ value: Int64) {
        self.units = value
        self.updateScaled()
    }
    

    open func set(_ bigDecimal: BasicDecimal!) {
        self.units = bigDecimal.getUnscaled()
        self.updateScaled()
    }
    

    open func addint(_ value: Int32) {
        self.units = self.units &+ Int64(truncatingIfNeeded: value)
        self.updateScaled()
    }
    

    open func addlong(_ value: Int64) {
        self.units = self.units &+ value
        self.updateScaled()
    }
    

    open func add(_ bigDecimal: BasicDecimal!) {
        self.units = self.units &+ bigDecimal.getUnscaled()
        self.updateScaled()
    }
    

    open func subtractint(_ value: Int32) {
        self.units = self.units &- Int64(truncatingIfNeeded: value)
        self.updateScaled()
    }
    

    open func subtractlong(_ value: Int64) {
        self.units = self.units &- value
        self.updateScaled()
    }
    

    open func subtract(_ bigDecimal: BasicDecimal!) {
        self.units = self.units &- bigDecimal.getUnscaled()
        self.updateScaled()
    }
    

    open func multiplyint(_ value: Int32) {
        self.units = self.units &* Int64(truncatingIfNeeded: value)
        self.updateScaled()
    }
    

    open func multiplylong(_ value: Int64) {
        self.units = self.units &* value
        self.updateScaled()
    }
    

    open func multiply(_ bigDecimal: BasicDecimal!) {
        self.units = self.units &* bigDecimal.getUnscaled()
        self.updateScaled()
    }
    

    open func divideint(_ value: Int32) {
        self.units = self.units / Int64(truncatingIfNeeded: value)
        self.updateScaled()
    }
    

    open func dividelong(_ value: Int64) {
        self.units = self.units / value
        self.updateScaled()
    }
    

    open func divide(_ bigDecimal: BasicDecimal!) {
        self.units = self.units / bigDecimal.getUnscaled()
        self.updateScaled()
    }
    

    @discardableResult open func getUnscaled() -> Int64 {
        return self.units
    }
    

    fileprivate func updateScaled() {
        self.scaled = Int32(truncatingIfNeeded: (self.units / Int64(truncatingIfNeeded: self.factorValue)))
    }
    

    @discardableResult open func getScaled() -> Int32 {
        return self.scaled
    }
    

    @discardableResult open override func toString() -> String! {
        return jstr(self.units)
    }
    

    @discardableResult open func getScaledFactor() -> Int32 {
        return self.factor
    }
    

    @discardableResult open func getScaledFactorValue() -> Int32 {
        return self.factorValue
    }
}

