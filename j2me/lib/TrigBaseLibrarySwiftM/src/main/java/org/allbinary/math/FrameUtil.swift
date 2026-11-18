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
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class FrameUtil: JObject {
    fileprivate static let instance: FrameUtil! = FrameUtil()
    

    @discardableResult open class func getInstance() -> FrameUtil! {
        return FrameUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func getFrameForAngle(_ angle: Int16, _ angleIncrement: Int32) -> Int32 {
        return self.adjustAngleToFrameAngle(Int32(truncatingIfNeeded: angle)) / angleIncrement
    }
    

    @discardableResult open func getFrameAngle(_ frame: Int32, _ angleIncrement: Int32) -> Int32 {
        let frameAngle: Int32 = angleIncrement &* frame &- 90
        return self.adjustAngleToFrameAngle(frameAngle)
    }
    

    @discardableResult open func adjustAngleToFrameAngle(_ currentAngle: Int32) -> Int32 {
        var currentAngle: Int32 = currentAngle
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        if (currentAngle > 359) {
            currentAngle = (currentAngle &- Int32(Int32(truncatingIfNeeded: angleFactory.TOTAL_ANGLE)))
            while (currentAngle > 359) {
                currentAngle = (currentAngle &- Int32(Int32(truncatingIfNeeded: angleFactory.TOTAL_ANGLE)))
            }
        }
        if (currentAngle < 0) {
            currentAngle = (currentAngle &+ Int32(Int32(truncatingIfNeeded: angleFactory.TOTAL_ANGLE)))
            while (currentAngle < 0) {
                currentAngle = (currentAngle &+ Int32(Int32(truncatingIfNeeded: angleFactory.TOTAL_ANGLE)))
            }
        }
        return currentAngle
    }
}

