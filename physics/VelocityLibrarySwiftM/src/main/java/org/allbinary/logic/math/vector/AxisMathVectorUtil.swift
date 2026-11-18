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
// package org.allbinary.logic.math.vector

import J2SEForSwiftLibrary
// import org.allbinary.math.NoDecimalTrigTable

open class AxisMathVectorUtil: JObject {
    fileprivate static let instance: AxisMathVectorUtil! = AxisMathVectorUtil()
    fileprivate var noDecimalTrigTable: NoDecimalTrigTable! = nil

    private func initFields() {
    self.noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AxisMathVectorUtil! {
        return AxisMathVectorUtil.instance
    }
    

    @discardableResult open func calculateX(_ magnitude: Int64, _ angle: Int32) -> Int64 {
        return magnitude &* self.noDecimalTrigTable.cos(angle) / 10
    }
    

    @discardableResult open func calculateY(_ magnitude: Int64, _ angle: Int32) -> Int64 {
        return magnitude &* self.noDecimalTrigTable.sin(angle) / 10
    }
    

    @discardableResult open func calculateZ(_ magnitude: Int64, _ otherAngle: Int32) -> Int64 {
        return magnitude &* self.noDecimalTrigTable.sin(otherAngle) / 10
    }
}

