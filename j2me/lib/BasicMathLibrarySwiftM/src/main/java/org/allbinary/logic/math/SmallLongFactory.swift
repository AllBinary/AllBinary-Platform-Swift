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

open class SmallLongFactory: JObject {
    fileprivate static let instance: SmallLongFactory! = SmallLongFactory()
    public var NEGATIVE_MAX: Int32 = 0
    public var POSITIVE_MAX: Int32 = 0
    fileprivate var INTEGER_ARRAY: JArray<Int64?>! = nil
    fileprivate var STRING_ARRAY: JArray<String?>! = nil
    public var MIN: Int32 = 0
    public var lastMin: Int32 = 0
    public var lastNegativeMin: Int32 = 0

    private func initFields() {
    self.NEGATIVE_MAX = 500
    self.POSITIVE_MAX = 0x2D1
    self.INTEGER_ARRAY = JArray<Int64?>(self.NEGATIVE_MAX &+ self.POSITIVE_MAX, nil)
    self.STRING_ARRAY = JArray<String?>(self.NEGATIVE_MAX &+ self.POSITIVE_MAX, nil)
    self.MIN = 0
    self.lastMin = 0
    self.lastNegativeMin = 0
    }
    

    @discardableResult open class func getInstance() -> SmallLongFactory! {
        return SmallLongFactory.instance
    }
    

    open func initWithRange(_ value: Int32, _ negativeValue: Int32) {
        do {
            var index: Int32 = value &- 1
            while (index >= self.lastMin) {
                defer { index &-= 1 }
            self.INTEGER_ARRAY[index &+ self.NEGATIVE_MAX] = Int64(index)
            }
        }
        do {
            var index: Int32 = negativeValue &- 1
            while (index >= self.lastNegativeMin) {
                defer { index &-= 1 }
            self.INTEGER_ARRAY[index] = Int64(-index)
            }
        }
        if (self.lastMin < value) {
            self.lastMin = value
            self.MIN = value
        }
        if (self.lastNegativeMin < negativeValue) {
            self.lastNegativeMin = negativeValue
        }
    }
    

    open func `init`() {
        if (self.INTEGER_ARRAY[0] == nil) {
            if (self.lastMin < self.POSITIVE_MAX || self.lastNegativeMin < self.NEGATIVE_MAX) {
                do {
                    var index: Int32 = self.POSITIVE_MAX &- 1
                    while (index >= self.lastMin) {
                        defer { index &-= 1 }
                    self.INTEGER_ARRAY[index &+ self.NEGATIVE_MAX] = Int64(index)
                    }
                }
                do {
                    var index: Int32 = self.NEGATIVE_MAX &- 1
                    while (index >= self.lastNegativeMin) {
                        defer { index &-= 1 }
                    self.INTEGER_ARRAY[index] = Int64(-index)
                    }
                }
                self.lastMin = self.POSITIVE_MAX
                self.lastNegativeMin = self.NEGATIVE_MAX
            }
        }
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstanceNoThrow(_ index: Int64) -> Int64! {
        if (index &+ Int64(truncatingIfNeeded: self.NEGATIVE_MAX) > Int64(truncatingIfNeeded: self.INTEGER_ARRAY.length &- 1)) {
            return self.INTEGER_ARRAY[-1 &+ self.NEGATIVE_MAX]
        }
        return self.INTEGER_ARRAY[(Int32(truncatingIfNeeded: index)) &+ self.NEGATIVE_MAX]
    }
    

    @discardableResult open func getString(_ index: Int32) -> String! {
        let i: Int32 = index &+ self.NEGATIVE_MAX
        if (self.STRING_ARRAY[i] == nil) {
            self.STRING_ARRAY[i] = self.INTEGER_ARRAY[i]!.toString()
        }
        return self.STRING_ARRAY[i]
    }
}

