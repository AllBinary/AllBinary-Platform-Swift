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
// package org.allbinary.input.motion.gesture.observer

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonLabels

open class MotionGestureEvent: AllBinaryEventObject {
    fileprivate static let PREVIOUS: String! = " Previous: "
    fileprivate static let HASHCODE: String! = " hashcode: "
    fileprivate var motionGesture: MotionGestureInput! = nil
    fileprivate var id: Int32 = 0
    fileprivate var previousPoint: GPoint! = nil
    fileprivate var currentPoint: GPoint! = nil
    fileprivate var commonLabels: CommonLabels! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
    
    self.previousPoint = PointFactory.getInstance().ZERO_ZERO
    self.currentPoint = PointFactory.getInstance().ZERO_ZERO
    self.commonLabels = CommonLabels.getInstance()
    }
    

    public init(_ source: JObject!, _ id: Int32, _ motionGesture: MotionGestureInput!) {
        super.init(source)
        self.initFields()
        self.id = id
        self.setMotionGesture(motionGesture)
    }
    

    @discardableResult open func getMotionGesture() -> MotionGestureInput! {
        return self.motionGesture
    }
    

    open func setMotionGesture(_ motionGesture: MotionGestureInput!) {
        self.motionGesture = motionGesture
    }
    

    @discardableResult open func getPreviousPoint() -> GPoint! {
        return self.previousPoint
    }
    

    open func setPreviousPoint(_ previousPoint: GPoint!) {
        self.previousPoint = previousPoint
    }
    

    @discardableResult open func getCurrentPoint() -> GPoint! {
        return self.currentPoint
    }
    

    open func setCurrentPoint(_ currentPoint: GPoint!) {
        self.currentPoint = currentPoint
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        stringBuffer.append(stringUtil.toString(self.motionGesture))
        stringBuffer.append(self.commonLabels.CURRENT)
        stringBuffer.append(stringUtil.toString(self.currentPoint))
        stringBuffer.append(MotionGestureEvent.PREVIOUS)
        stringBuffer.append(stringUtil.toString(self.previousPoint))
        stringBuffer.append(MotionGestureEvent.HASHCODE)
        stringBuffer.appendint(TsUtil.getInstance().hashCode(self))
        return stringBuffer.toString()
    }
    

    @discardableResult open func getId() -> Int32 {
        return self.id
    }
}

