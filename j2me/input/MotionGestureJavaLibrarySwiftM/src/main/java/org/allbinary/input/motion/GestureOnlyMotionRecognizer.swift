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
// import org.allbinary.input.motion.gesture.MotionGestureRecognizer

open class GestureOnlyMotionRecognizer: MotionRecognizer {
    fileprivate static var index: Int32 = 0
    fileprivate static let pointCircularPool: GPointCircularPool! = GPointCircularPool(40)
    fileprivate var motionGestureRecognizer: MotionGestureRecognizer! = nil
    fileprivate var id: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.id = jPostIncrement(&GestureOnlyMotionRecognizer.index)
        self.motionGestureRecognizer = MotionGestureRecognizer(self.id)
    }
    

    open override func processStartMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        let point: CustomGPoint! = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
        point.setX(x)
        point.setY(y)
        self.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers)
    }
    

    open override func processEndMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        let point: CustomGPoint! = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
        point.setX(x)
        point.setY(y)
        self.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers)
    }
    

    open override func processDraggedMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        let point: CustomGPoint! = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as! CustomGPoint)
        point.setX(x)
        point.setY(y)
        self.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers)
    }
}

