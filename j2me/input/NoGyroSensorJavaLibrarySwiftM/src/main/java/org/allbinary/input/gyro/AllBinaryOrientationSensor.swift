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
// package org.allbinary.input.gyro

import J2SEForSwiftLibrary
// import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
// import org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener
// import org.allbinary.input.AllBinarySensor
// import org.allbinary.logic.math.Orientation

open class AllBinaryOrientationSensor: AllBinarySensor {
    public static let NULL_ALLBINARY_ORIENTATION_SENSOR: AllBinaryOrientationSensor! = AllBinaryOrientationSensor()
    fileprivate var listener: CompleteMotionGestureInputEventListenerInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.listener = NoCompleteMotionGestureInputEventListener.getInstance()
    }
    

    open func setListener(_ completeMotionGestureInputEventListenerInterface: CompleteMotionGestureInputEventListenerInterface!) {
        self.listener = completeMotionGestureInputEventListenerInterface
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getOrientation() -> Orientation! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
}

