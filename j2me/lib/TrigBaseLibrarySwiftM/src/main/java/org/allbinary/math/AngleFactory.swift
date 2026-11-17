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
// package org.allbinary.math

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

open class AngleFactory: JObject {
    fileprivate static let instance: AngleFactory! = AngleFactory()
    public var logUtil: LogUtil! = nil
    public var TOTAL_ANGLE: Int16 = 0
    public var QUARTER_TOTAL_ANGLE: Int16 = 0
    fileprivate var angleArray: JArray<Angle?>! = nil
    fileprivate var NEGATIVE_ONE: Int16 = 0
    public var NOT_ANGLE: NamedAngle! = nil
    public var DOWN: NamedAngle! = nil
    public var UP: NamedAngle! = nil
    public var LEFT: NamedAngle! = nil
    public var RIGHT: NamedAngle! = nil
    fileprivate var frameUtil: FrameUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.TOTAL_ANGLE = 360
    self.QUARTER_TOTAL_ANGLE = 90
    self.angleArray = JArray<Angle?>(Int32(truncatingIfNeeded: self.TOTAL_ANGLE), nil)
    self.NEGATIVE_ONE = Int16(truncatingIfNeeded: -1)
    self.NOT_ANGLE = NamedAngle(self.NEGATIVE_ONE, CommonStrings.getInstance().EMPTY)
    
    
    
    
    self.frameUtil = FrameUtil.getInstance()
    }
    

    @discardableResult public static func getInstance() -> AngleFactory! {
        return AngleFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let commonPhoneStrings: CommonPhoneStrings! = CommonPhoneStrings.getInstance()
        let total: Int16 = Int16(truncatingIfNeeded: self.angleArray.length)
        self.UP = NamedAngle(Int16(truncatingIfNeeded: 0), commonPhoneStrings.UP)
        self.angleArray[0] = self.UP
        do {
            var index: Int32 = 1
            while (index < 90) {
                defer { index &+= 1 }
            self.angleArray[index] = Angle(Int16(truncatingIfNeeded: index))
            }
        }
        self.RIGHT = NamedAngle(Int16(truncatingIfNeeded: 90), commonPhoneStrings.RIGHT)
        self.angleArray[90] = self.RIGHT
        do {
            var index: Int32 = 91
            while (index < 180) {
                defer { index &+= 1 }
            self.angleArray[index] = Angle(Int16(truncatingIfNeeded: index))
            }
        }
        self.DOWN = NamedAngle(Int16(truncatingIfNeeded: 180), commonPhoneStrings.DOWN)
        self.angleArray[180] = self.DOWN
        do {
            var index: Int32 = 181
            while (index < 270) {
                defer { index &+= 1 }
            self.angleArray[index] = Angle(Int16(truncatingIfNeeded: index))
            }
        }
        self.LEFT = NamedAngle(Int16(truncatingIfNeeded: 270), commonPhoneStrings.LEFT)
        self.angleArray[270] = self.LEFT
        do {
            var index: Int32 = 271
            while (index < Int32(Int32(truncatingIfNeeded: total))) {
                defer { index &+= 1 }
            self.angleArray[index] = Angle(Int16(truncatingIfNeeded: index))
            }
        }
    }
    

    @discardableResult open func getAt(_ index: Int32) -> Angle! {
        let adjustedIndex: Int32 = self.frameUtil.adjustAngleToFrameAngle(index)
        return self.angleArray[adjustedIndex]
    }
    

    @discardableResult open func getClosestDirection(_ angle: Int32) -> Angle! {
        if ((angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)) {
            return self.UP
        } else if (angle >= 45 && angle < 135) {
            return self.RIGHT
        } else if (angle >= 135 && angle < 225) {
            return self.DOWN
        } else if (angle >= 225 && angle < 315) {
            return self.LEFT
        }
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getGeneralDirection() -> Angle! {
        return self.NOT_ANGLE
    }
    

    public static func main(_ args: JArray<String?>!) {
        let stringMaker: StringMaker! = StringMaker()
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        do {
            var index: Int32 = 0
            while (index < 360) {
                defer { index &+= 1 }
            stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort(angleFactory.getClosestDirection(index).getValue()).append(CommonSeps.getInstance().NEW_LINE)
            }
        }
        LogUtil.getInstance().putF(stringMaker.toString(), jBoxString("main"), "main")
    }
}

