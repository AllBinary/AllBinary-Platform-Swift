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
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker

open class SmallIntegerSingletonFactory: JObject {
    fileprivate static let instance: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory()
    public var NEGATIVE_MAX: Int32 = 0
    public var POSITIVE_MAX: Int32 = 0
    fileprivate var INTEGER_ARRAY: JArray<Int32?>! = nil
    fileprivate var STRING_ARRAY: JArray<String?>! = nil
    fileprivate var MIN: Int32 = 0
    fileprivate var lastMin: Int32 = 0
    fileprivate var lastNegativeMin: Int32 = 0

    private func initFields() {
    self.NEGATIVE_MAX = 500
    self.POSITIVE_MAX = 0x2D1
    self.INTEGER_ARRAY = JArray<Int32?>(self.NEGATIVE_MAX &+ self.POSITIVE_MAX, nil)
    self.STRING_ARRAY = JArray<String?>(self.NEGATIVE_MAX &+ self.POSITIVE_MAX, nil)
    self.MIN = 0
    self.lastMin = 0
    self.lastNegativeMin = 0
    }
    

    @discardableResult open class func getInstance() -> SmallIntegerSingletonFactory! {
        return SmallIntegerSingletonFactory.instance
    }
    

    @discardableResult open func getMin() -> Int32 {
        let minAllowed: Int32 = self.getMinAllowed()
        if (self.MIN <= minAllowed) {
            if (J2MEUtil.isJ2ME()) {
            } else if (AndroidUtil.isAndroid()) {
                let logUtil: LogUtil! = LogUtil.getInstance()
                logUtil.putF(StringMaker().append("Android InputFactory was initialized before GameMidlet: ").appendint(self.MIN).toString(), self, "getMin")
                self.initWithRange(0x291, 6)
            } else {
                let logUtil: LogUtil! = LogUtil.getInstance()
                logUtil.putF(StringMaker().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(self.MIN).toString(), self, "getMin")
                self.initWithRange(0x2D0, 6)
            }
        }
        if (self.MIN <= minAllowed) {
            let logUtil: LogUtil! = LogUtil.getInstance()
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", self, "getMin", JException("Exception", ""))
        }
        return self.MIN
    }
    

    @discardableResult fileprivate func getMinAllowed() -> Int32 {
        if (J2MEUtil.isJ2ME()) {
            return 0
        } else {
            if (AndroidUtil.isAndroid()) {
                return 0x101
            } else {
                return 23
            }
        }
    }
    

    open func initWithRange(_ value: Int32, _ negativeValue: Int32) {
        do {
            var index: Int32 = value &- 1
            while (index >= self.lastMin) {
                defer { index &-= 1 }
            self.INTEGER_ARRAY[index &+ self.NEGATIVE_MAX] = index
            }
        }
        do {
            var index: Int32 = negativeValue &- 1
            while (index >= self.lastNegativeMin) {
                defer { index &-= 1 }
            self.INTEGER_ARRAY[index] = -index
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
        if (self.lastMin < self.POSITIVE_MAX || self.lastNegativeMin < self.NEGATIVE_MAX) {
            do {
                var index: Int32 = self.POSITIVE_MAX &- 1
                while (index >= self.lastMin) {
                    defer { index &-= 1 }
                self.INTEGER_ARRAY[index &+ self.NEGATIVE_MAX] = index
                }
            }
            do {
                var index: Int32 = self.NEGATIVE_MAX &- 1
                while (index >= self.lastNegativeMin) {
                    defer { index &-= 1 }
                self.INTEGER_ARRAY[index] = -index
                }
            }
            self.lastMin = self.POSITIVE_MAX
            self.MIN = self.lastMin
            self.lastNegativeMin = self.NEGATIVE_MAX
        }
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.initWithRange(23, 0)
    }
    

    @discardableResult open func getAt(_ index: Int32) -> Int32! {
        return self.INTEGER_ARRAY[index &+ self.NEGATIVE_MAX]
    }
    

    @discardableResult open func getAtNoThrow(_ index: Int32) -> Int32! {
        if (index &+ self.NEGATIVE_MAX > self.INTEGER_ARRAY.length &- 1) {
            return self.INTEGER_ARRAY[-1 &+ self.NEGATIVE_MAX]
        }
        return self.INTEGER_ARRAY[index &+ self.NEGATIVE_MAX]
    }
    

    @discardableResult open func createInstance(_ index: Int32) -> Int32! {
        var integer: Int32! = self.getAt(index)
        if (integer == nil) {
            integer = index
        }
        return integer
    }
    

    @discardableResult open func getString(_ index: Int32) -> String! {
        let i: Int32 = index &+ self.NEGATIVE_MAX
        if (self.STRING_ARRAY[i] == nil) {
            self.STRING_ARRAY[i] = self.INTEGER_ARRAY[i]!.toString()
        }
        return self.STRING_ARRAY[i]
    }
}

