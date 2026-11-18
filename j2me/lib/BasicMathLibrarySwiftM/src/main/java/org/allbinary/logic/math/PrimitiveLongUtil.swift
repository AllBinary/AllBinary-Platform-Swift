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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class PrimitiveLongUtil: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var powerOfTen: Int32 = 0
    fileprivate var maxValue: Int32 = 0
    fileprivate var maxDigits: Int32 = 0
    fileprivate var charArray: JArray<UInt16>! = nil
    fileprivate var currentTotalDigits: Int32 = 0
    fileprivate var primitiveLongSingleton: PrimitiveLongSingleton! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    
    
    self.currentTotalDigits = 0
    self.primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    }
    

    @discardableResult open class func createPowerOfTen(_ powerOfTen: Int32) -> PrimitiveLongUtil! {
        let primitiveLongUtil: PrimitiveLongUtil! = PrimitiveLongUtil(powerOfTen, NullUtil.getInstance().NULL_OBJECT)
        if (powerOfTen % 10 != 0) {
            let logUtil: LogUtil! = LogUtil.getInstance()
            let commonStrings: CommonStrings! = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, JException("Exception", "Max must be power of 10"))
        }
        return primitiveLongUtil
    }
    

    public init(_ powerOfTen: Int32, _ unused: JObject!) {
        super.init()
        self.initFields()
        self.maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen)
        self.powerOfTen = powerOfTen
        self.maxValue = (powerOfTen &* 10) &- 1
        self.charArray = JArray<UInt16>(self.maxDigits, 0)
    }
    

    @discardableResult open func getCharArray(_ value: Int32) -> JArray<UInt16>! {
        if (value < 10) {
            self.setCurrentTotalDigits(1)
            return self.primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value]
        }
        if (value > self.maxValue) {
            self.setCurrentTotalDigits(3)
            return self.primitiveLongSingleton.UNK
        }
        var index: Int32 = 0
        var div: Int32 = self.powerOfTen
        var lastValue: Int32 = 0
        while (div >= 1) {
            let digit: Int32 = (value &- lastValue) / div
            if (digit >= 0 && digit < 10) {
                if (digit == 0 && index == 0) {
                } else {
                    self.charArray[jPostIncrement(&index)] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit]
                }
                lastValue = lastValue &+ digit &* div
            }
            div = div / 10
        }
        self.setCurrentTotalDigits(index)
        return self.charArray
    }
    

    fileprivate func setCurrentTotalDigits(_ currentTotalDigits: Int32) {
        self.currentTotalDigits = currentTotalDigits
    }
    

    @discardableResult open func getCurrentTotalDigits() -> Int32 {
        return self.currentTotalDigits
    }
    

    @discardableResult open func getMaxDigits() -> Int32 {
        return self.maxDigits
    }
}

