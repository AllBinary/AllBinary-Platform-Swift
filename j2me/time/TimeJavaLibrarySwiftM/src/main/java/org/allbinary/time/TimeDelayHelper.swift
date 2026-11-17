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
// package org.allbinary.time

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels

open class TimeDelayHelper: JObject {
    fileprivate var startTime: Int64 = 0
    fileprivate var elapsedTimeAtPause: Int64 = 0
    public var delay: Int32 = 0

    private func initFields() {
    self.startTime = Int64(truncatingIfNeeded: -1)
    self.elapsedTimeAtPause = Long.MIN_VALUE
    
    }
    

    public init(_ delay: Int32) {
        super.init()
        self.initFields()
        self.delay = delay
        self.setStartTimeTNT()
    }
    

    @discardableResult open func isTimeTNT() -> Bool {
        let currentTime: Int64 = JSystem.currentTimeMillis()
        if (currentTime &- self.startTime > Int64(truncatingIfNeeded: self.delay)) {
            self.startTime = currentTime
            return true
        }
        return false
    }
    

    @discardableResult open func isTimeSinceTNT(_ delay: Int32) -> Bool {
        let currentTime: Int64 = JSystem.currentTimeMillis()
        if (currentTime &- self.startTime > Int64(truncatingIfNeeded: delay)) {
            self.startTime = currentTime
            return true
        }
        return false
    }
    

    @discardableResult open func isTime(_ currentTime: Int64) -> Bool {
        if (currentTime &- self.startTime > Int64(truncatingIfNeeded: self.delay)) {
            self.startTime = currentTime
            return true
        }
        return false
    }
    

    @discardableResult open func isTimeWithoutReset(_ currentTime: Int64) -> Bool {
        if (currentTime &- self.startTime > Int64(truncatingIfNeeded: self.delay)) {
            return true
        }
        return false
    }
    

    @discardableResult open func isTimeSince(_ delay: Int32, _ currentTime: Int64) -> Bool {
        if (currentTime &- self.startTime > Int64(truncatingIfNeeded: self.delay)) {
            self.startTime = currentTime
            return true
        }
        return false
    }
    

    @discardableResult open func getElapsedTNT() -> Int64 {
        return JSystem.currentTimeMillis() &- self.startTime
    }
    

    @discardableResult open func getElapsed(_ currentTime: Int64) -> Int64 {
        return currentTime &- self.startTime
    }
    

    @discardableResult open func isElapsed(_ currentTime: Int64, _ time: Int64) -> Bool {
        if (self.getElapsed(currentTime) > time) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func isElapsedTNT(_ time: Int64) -> Bool {
        if (self.getElapsedTNT() > time) {
            return true
        } else {
            return false
        }
    }
    

    open func setStartTime(_ startTime: Int64) {
        self.startTime = startTime
    }
    

    @discardableResult open func getStartTime() -> Int64 {
        return self.startTime
    }
    

    open func setStartTimeTNT() {
        self.startTime = JSystem.currentTimeMillis()
    }
    

    open func pause() {
        self.elapsedTimeAtPause = self.getElapsedTNT()
        self.startTime = Long.MAX_VALUE
    }
    

    @discardableResult open func resume() -> Bool {
        if (self.elapsedTimeAtPause != Long.MIN_VALUE) {
            self.startTime = JSystem.currentTimeMillis() &+ self.elapsedTimeAtPause
            self.elapsedTimeAtPause = Long.MIN_VALUE
            self.setStartTimeTNT()
            return true
        }
        return false
    }
    

    @discardableResult open func toStringAt(_ currentTime: Int64) -> String! {
        let elapsed: Int64 = self.getElapsed(currentTime)
        if (elapsed > 0) {
            let commonLabels: CommonLabels! = CommonLabels.getInstance()
            let elapsedAsString: String! = jstr(elapsed)
            return StringMaker().append(commonLabels.START).appendlong(self.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
    

    @discardableResult open override func toString() -> String! {
        let currentTime: Int64 = JSystem.currentTimeMillis()
        let elapsed: Int64 = self.getElapsed(currentTime)
        if (elapsed > 0) {
            let commonLabels: CommonLabels! = CommonLabels.getInstance()
            let elapsedAsString: String! = jstr(elapsed)
            return StringMaker().append(commonLabels.START).appendlong(self.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString()
        } else {
            return StringUtil.getInstance().EMPTY_STRING
        }
    }
}

