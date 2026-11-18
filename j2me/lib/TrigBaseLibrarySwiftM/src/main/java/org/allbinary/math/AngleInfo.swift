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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class AngleInfo: JObject {
    fileprivate static let ANGLE: String! = "Angle: "
    fileprivate var angleIncrementInfo: AngleIncrementInfo! = nil
    fileprivate var angle: Int16 = 0
    fileprivate var frameUtil: FrameUtil! = nil

    private func initFields() {
    
    self.angle = 0
    self.frameUtil = FrameUtil.getInstance()
    }
    

    @discardableResult open class func getInstance(_ angleIncrement: Int16) -> AngleInfo! {
        return AngleInfo(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement))
    }
    

    public init(_ angleIncrementInfo: AngleIncrementInfo!) {
        super.init()
        self.initFields()
        self.angleIncrementInfo = angleIncrementInfo
    }
    

    open func adjustAngle(_ frame: Int32) {
        let newAngle: Int32 = Int32(Int32(truncatingIfNeeded: self.angleIncrementInfo.getAngleIncrement())) &* frame &- 90
        self.setAngle(Int16(truncatingIfNeeded: self.frameUtil.adjustAngleToFrameAngle(newAngle)))
    }
    

    @discardableResult open func getAngle() -> Int16 {
        return self.angle
    }
    

    open func setAngle(_ angle: Int16) {
        self.angle = angle
    }
    

    @discardableResult open func getAngleIncrementInfo() -> AngleIncrementInfo! {
        return self.angleIncrementInfo
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(AngleInfo.ANGLE)
        stringBuffer.appendshort(self.angle)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(StringUtil.getInstance().toString(self.getAngleIncrementInfo()))
        return stringBuffer.toString()
    }
}

