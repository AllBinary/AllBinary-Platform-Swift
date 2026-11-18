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
// package org.allbinary.input.motion

import J2SEForSwiftLibrary
// import org.allbinary.graphics.CustomGPoint
// import org.allbinary.graphics.GPointCircularPool
// import org.allbinary.input.motion.button.TouchButtonRecognizer
// import org.allbinary.input.motion.gesture.MotionGestureRecognizer
// import org.allbinary.logic.communication.log.LogUtil

open class AllMotionRecognizer: MotionRecognizer {
    fileprivate static var index: Int32 = 0
    fileprivate static let pointCircularPool: GPointCircularPool! = GPointCircularPool(40)
    public var logUtil: LogUtil! = nil
    fileprivate var motionGestureRecognizer: MotionGestureRecognizer! = nil
    fileprivate var touchButtonProcessing: Bool = false
    fileprivate var touchButtonRecognizer: TouchButtonRecognizer! = nil
    fileprivate var id: Int32 = 0
    fileprivate var lastX: Int32 = 0
    fileprivate var lastY: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.touchButtonProcessing = false
    
    
    self.lastX = 0
    self.lastY = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.id = jPostIncrement(&AllMotionRecognizer.index)
        self.motionGestureRecognizer = MotionGestureRecognizer(self.id)
        self.touchButtonRecognizer = TouchButtonRecognizer()
    }
    

    open override func processStartMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            self.touchButtonProcessing = true
        }
        if (!self.touchButtonProcessing) {
            let point: CustomGPoint! = (AllMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
            point.setX(x)
            point.setY(y)
            self.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
        }
    }
    

    open override func processEndMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (self.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
        }
        if (!self.touchButtonProcessing) {
            let point: CustomGPoint! = (AllMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
            point.setX(x)
            point.setY(y)
            self.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
        }
        if (self.touchButtonProcessing) {
            self.touchButtonProcessing = false
        }
    }
    

    open override func processDraggedMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (self.touchButtonProcessing) {
            self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        }
        if (!self.touchButtonProcessing) {
            let point: CustomGPoint! = (AllMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
            point.setX(x)
            point.setY(y)
            self.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
        }
    }
    

    open func processMovedMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (x != self.lastX || y != self.lastY) {
            self.lastX = x
            self.lastY = y
            let point: CustomGPoint! = (AllMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
            point.setX(x)
            point.setY(y)
            self.motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers)
        }
    }
    

    open func processScrolledMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        let point: CustomGPoint! = (AllMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
        point.setX(x)
        point.setY(y)
        self.motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers)
    }
    

    @discardableResult public func getMotionGestureRecognizer() -> MotionGestureRecognizer! {
        return self.motionGestureRecognizer
    }
}

