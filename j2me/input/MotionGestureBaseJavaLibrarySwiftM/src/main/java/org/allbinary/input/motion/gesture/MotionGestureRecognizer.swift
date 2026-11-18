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
// package org.allbinary.input.motion.gesture

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Line
// import org.allbinary.graphics.PointFactory
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler
// import org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.J2SEMath
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.string.CommonStrings

open class MotionGestureRecognizer: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var j2seMath: J2SEMath! = nil
    fileprivate var origin: GPoint! = nil
    fileprivate var previous: GPoint! = nil
    fileprivate var intermediate: GPoint! = nil
    fileprivate var line: Line! = nil
    fileprivate var motionGesturesHandler: BasicMotionGesturesHandler! = nil
    fileprivate var movedMotionGesturesHandler: BasicEventHandler! = nil
    fileprivate var scrolledMotionGesturesHandler: BasicEventHandler! = nil
    fileprivate var motionEventCircularPool: MotionEventCircularPool! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.j2seMath = J2SEMath.getInstance()
    self.origin = PointFactory.getInstance().ZERO_ZERO
    self.previous = self.origin
    self.intermediate = self.origin
    self.line = Line(self.origin, self.origin)
    
    
    
    
    }
    

    public init(_ id: Int32) {
        super.init()
        self.initFields()
        self.motionEventCircularPool = MotionEventCircularPool.createPool(id)
        var motionGesturesHandler: BasicEventHandler! = BasicEventHandler()
        var movedMotionGesturesHandler: BasicEventHandler! = motionGesturesHandler
        var scrolledMotionGesturesHandler: BasicEventHandler! = motionGesturesHandler
        do {
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance()
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance()
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance()
        } /* catch (Exception e): a thrown Java exception stops the program */
        self.motionGesturesHandler = (motionGesturesHandler as! BasicMotionGesturesHandler)
        self.movedMotionGesturesHandler = movedMotionGesturesHandler
        self.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler
    }
    

    @discardableResult open func processPressedMotionEvent(_ current: GPoint!, _ deviceId: Int32, _ button: Int32) -> Bool {
        self.intermediate = self.origin
        self.previous = self.origin
        let event: MotionGestureEvent! = self.motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().PRESSED)
        event.setPreviousPoint(self.previous)
        event.setCurrentPoint(current)
        self.motionGesturesHandler.fireEvent(event)
        return true
    }
    

    @discardableResult open func processReleasedMotionEvent(_ current: GPoint!, _ deviceId: Int32, _ button: Int32) -> Bool {
        let event: MotionGestureEvent! = self.motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().RELEASED)
        event.setPreviousPoint(self.previous)
        event.setCurrentPoint(current)
        self.motionGesturesHandler.fireEvent(event)
        return true
    }
    

    open func processDraggedMotionEvent(_ current: GPoint!, _ deviceId: Int32, _ buttonMask: Int32) {
        if (self.previous === self.origin || self.intermediate === self.origin) {
            self.previous = current
            self.intermediate = current
            return
        }
        self.line.setP1(self.previous)
        self.line.setP2(current)
        let minimumMotionGesture: Int32 = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture()
        if (self.j2seMath.abs(Float(self.line.getDeltaX())) < Float(minimumMotionGesture) && self.j2seMath.abs(Float(self.line.getDeltaY())) < Float(minimumMotionGesture)) {
            self.intermediate = current
            return
        }
        let gradient: Double = self.line.getGradient()
        let absGradient: Double = Double(self.j2seMath.abs(Float(gradient)))
        let conf: MotionGestureConfiguration! = MotionGestureConfigurationFactory.getInstance()
        let touchMotionGestureFactory: TouchMotionGestureFactory! = TouchMotionGestureFactory.getInstance()
        var newMotionGesture: MotionGestureInput! = touchMotionGestureFactory.NO_MOTION
        var diagonalToleranceHigher: Double = 12.0
        var diagonalToleranceLower: Double = 12.0
        if (conf.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = Double((90 &- conf.getDiagonalTolerance()))
            diagonalToleranceLower = Double(conf.getDiagonalTolerance())
        }
        if (absGradient > JMath.tan(JMath.toRadians(diagonalToleranceHigher))) {
            if (self.line.getDeltaY() > 0.0) {
                newMotionGesture = touchMotionGestureFactory.UP
            } else {
                newMotionGesture = touchMotionGestureFactory.DOWN
            }
        } else {
            if (absGradient < JMath.tan(JMath.toRadians(diagonalToleranceLower))) {
                if (self.line.getDeltaX() > 0.0) {
                    newMotionGesture = touchMotionGestureFactory.LEFT
                } else {
                    newMotionGesture = touchMotionGestureFactory.RIGHT
                }
            } else {
                if (gradient > 0.0) {
                    if (self.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT
                    }
                } else {
                    if (self.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT
                    }
                }
            }
        }
        self.previous = current
        self.intermediate = current
        let event: MotionGestureEvent! = self.motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(self.previous)
        event.setCurrentPoint(current)
        self.motionGesturesHandler.fireEvent(event)
        return
    }
    

    @discardableResult open func processMovedMotionEvent(_ current: GPoint!, _ deviceId: Int32, _ button: Int32) -> Bool {
        let event: MotionGestureEvent! = self.motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().NO_MOTION)
        event.setPreviousPoint(self.previous)
        event.setCurrentPoint(current)
        self.movedMotionGesturesHandler.fireEvent(event)
        return true
    }
    

    @discardableResult open func processScrolledMotionEvent(_ current: GPoint!, _ deviceId: Int32, _ button: Int32) -> Bool {
        let touchMotionGestureFactory: TouchMotionGestureFactory! = TouchMotionGestureFactory.getInstance()
        var newMotionGesture: MotionGestureInput! = touchMotionGestureFactory.NO_MOTION
        if (button > 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP
        } else if (button < 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN
        }
        let event: MotionGestureEvent! = self.motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(self.previous)
        event.setCurrentPoint(current)
        self.scrolledMotionGesturesHandler.fireEvent(event)
        return true
    }
    

    @discardableResult open func getMotionGesturesHandler() -> BasicMotionGesturesHandler! {
        return self.motionGesturesHandler
    }
}

