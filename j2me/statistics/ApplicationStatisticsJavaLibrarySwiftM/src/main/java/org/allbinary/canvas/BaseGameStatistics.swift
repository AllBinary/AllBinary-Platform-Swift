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
// package org.allbinary.canvas

import J2SEForSwiftLibrary
// import org.allbinary.logic.math.PrimitiveLongSingleton
// import org.allbinary.logic.math.ScaleFactorFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class BaseGameStatistics: JObject {
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var updateDelayHelper: TimeDelayHelper! = nil
    fileprivate var totalRefreshes: Int64 = 0
    fileprivate var totalFrames: Int64 = 0
    public var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil
    fileprivate var DEFAULT_SCALE_FACTOR: Int32 = 0
    public var NOT: String! = nil
    fileprivate var EMPTY_STRING: String! = nil
    fileprivate var STRING_ARRAY: JArray<String?>! = nil
    fileprivate var SPACE_CHAR: UInt16 = 0
    fileprivate var PLUS_CHAR: UInt16 = 0
    fileprivate var X_CHAR: UInt16 = 0
    fileprivate var CHAR_ARRAY: JArray<JArray<UInt16>?>! = nil
    fileprivate var primitiveLongSingleton: PrimitiveLongSingleton! = nil

    private func initFields() {
    self.timeDelayHelper = TimeDelayHelper(Integer.MAX_VALUE)
    self.updateDelayHelper = TimeDelayHelper(2000)
    self.totalRefreshes = 0
    self.totalFrames = 0
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    self.DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
    self.NOT = "Not enough Time to Calculate"
    self.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    self.STRING_ARRAY = JArray<String?>([" Total Time: ", self.EMPTY_STRING, " Total Frames: ", self.EMPTY_STRING, " Frames/10 Sec: ", self.EMPTY_STRING, " Total Paints: ", self.EMPTY_STRING, " Paints/10 Sec: ", self.EMPTY_STRING])
    self.SPACE_CHAR = UInt16((" " as Unicode.Scalar).value)
    self.PLUS_CHAR = UInt16(("+" as Unicode.Scalar).value)
    self.X_CHAR = UInt16(("X" as Unicode.Scalar).value)
    self.CHAR_ARRAY = JArray<JArray<UInt16>?>([JArray<UInt16>([UInt16(("F" as Unicode.Scalar).value), UInt16(("r" as Unicode.Scalar).value), UInt16(("a" as Unicode.Scalar).value), UInt16(("m" as Unicode.Scalar).value), UInt16(("e" as Unicode.Scalar).value), UInt16(("s" as Unicode.Scalar).value), UInt16(("/" as Unicode.Scalar).value), UInt16(("1" as Unicode.Scalar).value), UInt16(("0" as Unicode.Scalar).value), UInt16((" " as Unicode.Scalar).value), UInt16(("S" as Unicode.Scalar).value), UInt16(("e" as Unicode.Scalar).value), UInt16(("c" as Unicode.Scalar).value), UInt16((":" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("X" as Unicode.Scalar).value), UInt16(("X" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("P" as Unicode.Scalar).value), UInt16(("a" as Unicode.Scalar).value), UInt16(("i" as Unicode.Scalar).value), UInt16(("n" as Unicode.Scalar).value), UInt16(("t" as Unicode.Scalar).value), UInt16(("s" as Unicode.Scalar).value), UInt16(("/" as Unicode.Scalar).value), UInt16(("1" as Unicode.Scalar).value), UInt16(("0" as Unicode.Scalar).value), UInt16((" " as Unicode.Scalar).value), UInt16(("S" as Unicode.Scalar).value), UInt16(("e" as Unicode.Scalar).value), UInt16(("c" as Unicode.Scalar).value), UInt16((":" as Unicode.Scalar).value)]), JArray<UInt16>([UInt16(("X" as Unicode.Scalar).value), UInt16(("X" as Unicode.Scalar).value)])])
    self.primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`() {
        self.timeDelayHelper.setStartTimeTNT()
        self.totalRefreshes = 0
        self.totalFrames = 0
    }
    

    open func add(_ string: String!) {
    }
    

    open func process() {
    }
    

    open func nextFrame() {
        self.totalFrames &+= 1
    }
    

    open func nextRefresh() {
        self.totalRefreshes &+= 1
    }
    

    @discardableResult open func getRefreshRate() -> Int16 {
        let elapsed: Int64 = self.timeDelayHelper.getElapsed(self.gameTickTimeDelayHelper.startTime)
        if (elapsed > 1) {
            let time: Int16 = Int16(truncatingIfNeeded: (self.totalRefreshes / (elapsed >> self.DEFAULT_SCALE_FACTOR)))
            return time
        } else {
            return 0
        }
    }
    

    @discardableResult open func getTimeDelayHelper() -> TimeDelayHelper! {
        return self.timeDelayHelper
    }
    

    @discardableResult open func to2DCharArray() -> JArray<JArray<UInt16>?>! {
        var totalTime: Int64 = self.timeDelayHelper.getElapsed(self.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime >> self.DEFAULT_SCALE_FACTOR)
        if (totalTime > 0 && self.updateDelayHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
            let framesPerSec: Int32 = Int32(truncatingIfNeeded: (self.totalFrames / totalTime))
            if (framesPerSec < 10) {
                self.CHAR_ARRAY[1]![0] = self.SPACE_CHAR
                self.CHAR_ARRAY[1]![1] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec]
            } else if (framesPerSec < 100) {
                let tens: Int32 = framesPerSec / 10
                let removeTens: Int32 = tens &* 10
                self.CHAR_ARRAY[1]![0] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens]
                self.CHAR_ARRAY[1]![1] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec &- removeTens]
            } else {
                self.CHAR_ARRAY[1]![0] = self.PLUS_CHAR
                self.CHAR_ARRAY[1]![1] = self.PLUS_CHAR
            }
            let refreshesPerSec: Int32 = Int32(truncatingIfNeeded: (self.totalRefreshes / totalTime))
            if (refreshesPerSec < 10) {
                self.CHAR_ARRAY[3]![0] = self.X_CHAR
                self.CHAR_ARRAY[3]![1] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec]
            } else if (refreshesPerSec < 100) {
                let tens: Int32 = refreshesPerSec / 10
                let removeTens: Int32 = tens &* 10
                self.CHAR_ARRAY[3]![0] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec / 10]
                self.CHAR_ARRAY[3]![1] = self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec &- removeTens]
            } else {
                self.CHAR_ARRAY[3]![0] = self.PLUS_CHAR
                self.CHAR_ARRAY[3]![1] = self.PLUS_CHAR
            }
        }
        return self.CHAR_ARRAY
    }
    

    @discardableResult open func toStringArray() -> JArray<String?>! {
        var totalTime: Int64 = self.timeDelayHelper.getElapsed(self.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 10000)
        if (totalTime > 0) {
            self.STRING_ARRAY[1] = jstr(totalTime)
            self.STRING_ARRAY[3] = jstr(self.totalFrames)
            self.STRING_ARRAY[5] = jstr(self.totalFrames / totalTime)
            self.STRING_ARRAY[7] = jstr(self.totalRefreshes)
            self.STRING_ARRAY[9] = jstr(self.totalRefreshes / totalTime)
        } else {
            let string: String! = self.EMPTY_STRING
            self.STRING_ARRAY[1] = string
            self.STRING_ARRAY[3] = string
            self.STRING_ARRAY[5] = string
            self.STRING_ARRAY[7] = string
            self.STRING_ARRAY[9] = string
        }
        return self.STRING_ARRAY
    }
    

    @discardableResult open func toStringAt(_ totalTime: Int64) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(self.STRING_ARRAY[0])
        stringBuffer.appendlong(totalTime)
        stringBuffer.append(self.STRING_ARRAY[2])
        stringBuffer.appendlong(self.totalFrames)
        stringBuffer.append(self.STRING_ARRAY[4])
        stringBuffer.appendlong(self.totalFrames / totalTime)
        if (self.totalRefreshes > 0) {
            stringBuffer.append(self.STRING_ARRAY[6])
            stringBuffer.appendlong(self.totalRefreshes)
            stringBuffer.append(self.STRING_ARRAY[8])
            stringBuffer.appendlong(self.totalRefreshes / totalTime)
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        }
        return stringBuffer.toString()
    }
    

    @discardableResult open override func toString() -> String! {
        var totalTime: Int64 = self.timeDelayHelper.getElapsed(self.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime / 1000)
        if (totalTime > 0) {
            return self.toStringAt(totalTime)
        } else {
            return self.NOT
        }
    }
}

