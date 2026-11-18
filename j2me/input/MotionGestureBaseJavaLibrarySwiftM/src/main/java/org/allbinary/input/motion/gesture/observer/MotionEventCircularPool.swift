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
// import org.allbinary.game.input.InputFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.util.event.AllBinaryEventCircularPool

open class MotionEventCircularPool: JObject {
    fileprivate var MIN: Int32 = 0
    fileprivate var eventPool: AllBinaryEventCircularPool! = nil

    private func initFields() {
    self.MIN = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
    self.eventPool = AllBinaryEventCircularPool((InputFactory.getInstance().MAX &- 1) &- self.MIN)
    }
    

    @discardableResult open class func createPool(_ id: Int32) -> MotionEventCircularPool! {
        return MotionEventCircularPool(id)
    }
    

    public init(_ id: Int32) {
        super.init()
        self.initFields()
        self.eventPool.initAllBinaryEventCircularPool(MotionEventFactory(self.eventPool, id))
    }
    

    @discardableResult open func getInstance(_ motionGestureInput: MotionGestureInput!) -> MotionGestureEvent! {
        return (self.eventPool.getInstance(motionGestureInput.getId() &- self.MIN) as! MotionGestureEvent)
    }
}

