// Generated Code Do Not Modify
// package org.allbinary.logic.math

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType

open class MathUtil: JObject {
    fileprivate static let instance: MathUtil! = MathUtil()
    fileprivate var ACCURACY: Int32 = 0

    private func initFields() {
    self.ACCURACY = 100
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> MathUtil! {
        return MathUtil.instance
    }
    

    @discardableResult open func getTotalDigits(_ digits: Int32) -> Int32 {
        var digits: Int32 = digits
        var total: Int32 = 0
        while (digits > 0) {
            digits = digits / 10
            total &+= 1
        }
        return total
    }
    

    @discardableResult open func sqrt(_ value: Int32) -> Int32 {
        if (value <= 1) {
            return value
        }
        var accumulated: Int32 = value >> 1
        var result: Int32 = (accumulated &+ (value / accumulated)) >> 1
        repeat {
            accumulated = result
            result = (accumulated &+ (value / accumulated)) >> 1
        } while (accumulated > result)
        return accumulated
    }
    

    @discardableResult open func sqrtd(_ x: Int32) -> Double {
        if (x == 0) {
            return Double(0.0)
        }
        if (x < 0) {
            return Double(-1.0)
        }
        var result: Double = Double(x)
        do {
            var index: Int32 = 0
            while (index < self.ACCURACY) {
                defer { index &+= 1 }
            result = (result + (Double(x) / result)) / 2.0
            }
        }
        return result
    }
    

    @discardableResult open func abs(_ value: Int32) -> Int32 {
        return ((value < 0) ? -value : value)
    }
    

    @discardableResult open func abslong(_ value: Int64) -> Int64 {
        return ((value < 0) ? -value : value)
    }
    

    @discardableResult open func min(_ value: Int32, _ value2: Int32) -> Int32 {
        return ((value <= value2) ? value : value2)
    }
    

    @discardableResult open func max(_ value: Int32, _ value2: Int32) -> Int32 {
        return ((value >= value2) ? value : value2)
    }
}

