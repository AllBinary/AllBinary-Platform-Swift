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
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface

open class MotionEventFactory: JObject, AllBinaryEventObjectFactoryInterface {
    fileprivate static var index: Int32 = 0
    fileprivate var source: JObject! = nil
    fileprivate var id: Int32 = 0

    private func initFields() {
    
    
    }
    

    public init(_ source: JObject!, _ id: Int32) {
        super.init()
        self.initFields()
        self.source = source
        self.id = id
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId()
    }
    

    @discardableResult open func getInstance() -> AllBinaryEventObject! {
        let inputFactory: InputFactory! = InputFactory.getInstance()
        let input: Input! = inputFactory.getInstanceById(jPostIncrement(&MotionEventFactory.index))
        if (input === inputFactory.NO_INPUT) {
            return MotionGestureEvent(self.source, self.id, TouchMotionGestureFactory.getInstance().NO_MOTION)
        } else {
            return MotionGestureEvent(self.source, self.id, (input as! MotionGestureInput))
        }
    }
}

