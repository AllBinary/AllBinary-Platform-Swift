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
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsProperty
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class AngleIncrementInfo: JObject {
    fileprivate static let INCREMENT: String! = "Inc: "
    fileprivate var angleIncrement: Int16 = 0
    public var DOWN_FRAME: Int32! = nil
    public var UP_FRAME: Int32! = nil
    public var LEFT_FRAME: Int32! = nil
    public var RIGHT_FRAME: Int32! = nil
    fileprivate var frameUtil: FrameUtil! = nil

    private func initFields() {
    
    
    
    
    
    self.frameUtil = FrameUtil.getInstance()
    }
    

    public init(_ angleIncrement: Int16) {
        super.init()
        self.initFields()
        self.angleIncrement = angleIncrement
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        let smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = SmallIntegerSingletonFactory.getInstance()
        self.DOWN_FRAME = smallIntegerSingletonFactory.getAt(Int32(angleFactory.DOWN.getValue()) / Int32(self.angleIncrement))
        self.UP_FRAME = smallIntegerSingletonFactory.getAt(Int32(truncatingIfNeeded: angleFactory.UP.getValue()))
        self.LEFT_FRAME = smallIntegerSingletonFactory.getAt(Int32(angleFactory.LEFT.getValue()) / Int32(self.angleIncrement))
        self.RIGHT_FRAME = smallIntegerSingletonFactory.getAt(Int32(angleFactory.RIGHT.getValue()) / Int32(self.angleIncrement))
    }
    

    @discardableResult open func getFrameAngle(_ frame: Int32) -> Int32 {
        return self.frameUtil.getFrameAngle(frame, Int32(truncatingIfNeeded: self.angleIncrement))
    }
    

    @discardableResult open func getAngleIncrement() -> Int16 {
        return self.angleIncrement
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append(AngleIncrementInfo.INCREMENT).appendshort(self.angleIncrement).toString()
    }
    

    @discardableResult open func getClosestGeneralDirection(_ angle: Int16) -> Int32 {
        var closestDirection: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(360)
        if (self.UP_FRAME.intValue() - Int32(angle) < closestDirection.intValue() - Int32(angle)) {
            closestDirection = self.UP_FRAME
        }
        if (self.DOWN_FRAME.intValue() - Int32(angle) < closestDirection.intValue() - Int32(angle)) {
            closestDirection = self.DOWN_FRAME
        }
        if (self.LEFT_FRAME.intValue() - Int32(angle) < closestDirection.intValue() - Int32(angle)) {
            closestDirection = self.LEFT_FRAME
        }
        if (self.RIGHT_FRAME.intValue() - Int32(angle) < closestDirection.intValue() - Int32(angle)) {
            closestDirection = self.RIGHT_FRAME
        }
        return closestDirection.intValue()
    }
}

