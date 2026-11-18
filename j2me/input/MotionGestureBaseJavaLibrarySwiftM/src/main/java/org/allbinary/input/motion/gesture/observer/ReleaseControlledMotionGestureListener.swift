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
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class ReleaseControlledMotionGestureListener: JObject, MotionGestureEventListener {
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var currentMotionGesture: MotionGestureInput! = nil
    fileprivate var isMouseGestureOccurring: Bool = false
    fileprivate var motionGestureCollection: BasicArrayList! = nil
    fileprivate var signed: CompleteMotionGestureListenerInterface! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
    self.isMouseGestureOccurring = false
    self.motionGestureCollection = BasicArrayListD()
    
    }
    

    public init(_ signed: CompleteMotionGestureListenerInterface!) {
        super.init()
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.signed = signed
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
    }
    

    open func onUpMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onDownMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onLeftMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onRightMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onDiagonalDownRightMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onDiagonalDownLeftMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onDiagonalUpRightMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onDiagonalUpLeftMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.onMotionGestureEvent(ev)
    }
    

    open func onPressedMotionGestureEvent(_ ev: MotionGestureEvent!) {
        self.isMouseGestureOccurring = true
        self.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
        self.onMotionGestureEvent(ev)
    }
    

    open func onScrolledMotionGestureEvent(_ motionGestureEvent: MotionGestureEvent!) {
    }
    

    open func released(_ ev: MotionGestureEvent!) {
        do {
            if (self.isMouseGestureOccurring == false) {
                return
            }
            self.isMouseGestureOccurring = false
            self.signed.onMotionGestureCompleted(self.motionGestureCollection)
            self.motionGestureCollection.clear()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func onMotionGestureEvent(_ ev: MotionGestureEvent!) {
        if (self.isMouseGestureOccurring == false) {
            return
        }
        let motionGestureInput: MotionGestureInput! = ev.getMotionGesture()
        if (motionGestureInput === TouchMotionGestureFactory.getInstance().PRESSED) {
            self.onPressedMotionGestureEvent(ev)
        } else if (motionGestureInput === TouchMotionGestureFactory.getInstance().RELEASED) {
            self.released(ev)
        } else {
            if (self.currentMotionGesture !== motionGestureInput) {
                self.currentMotionGesture = motionGestureInput
                self.motionGestureCollection.add(ev.getMotionGesture())
            }
        }
    }
}

