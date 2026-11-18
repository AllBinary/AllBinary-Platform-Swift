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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent

open class MirrorMotionGestureEventUtil: JObject {
    fileprivate static let instance: MirrorMotionGestureEventUtil! = MirrorMotionGestureEventUtil()
    fileprivate var motionEventCircularPool: MotionEventCircularPool! = nil

    private func initFields() {
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.motionEventCircularPool = MotionEventCircularPool.createPool(Integer.MAX_VALUE)
    }
    

    @discardableResult open func mirrorVerticle(_ motionGestureEvent: MotionGestureEvent!, _ halfWidth: Int32) -> MotionGestureEvent! {
        let event: MotionGestureEvent! = self.motionEventCircularPool.getInstance(motionGestureEvent.getMotionGesture())
        let previousNewX: Int32 = self.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth)
        let currentNewX: Int32 = self.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth)
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let mirroredPreviousPoint: GPoint! = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY())
        let mirroredCurrentPoint: GPoint! = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY())
        event.setPreviousPoint(mirroredPreviousPoint)
        event.setCurrentPoint(mirroredCurrentPoint)
        return event
    }
    

    @discardableResult open func getNewX(_ x: Int32, _ halfWidth: Int32) -> Int32 {
        var newX: Int32 = 0
        if (x > halfWidth) {
            newX = halfWidth &- (x &- halfWidth)
        } else {
            newX = halfWidth &+ (halfWidth &- x)
        }
        return newX
    }
    

    @discardableResult open class func getInstance() -> MirrorMotionGestureEventUtil! {
        return MirrorMotionGestureEventUtil.instance
    }
}

