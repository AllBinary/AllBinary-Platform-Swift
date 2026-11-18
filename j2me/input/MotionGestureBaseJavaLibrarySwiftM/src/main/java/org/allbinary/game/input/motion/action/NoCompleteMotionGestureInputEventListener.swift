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
// package org.allbinary.game.input.motion.action

import J2SEForSwiftLibrary
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.game.input.CompleteMotionGestureInputEventListener
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

open class NoCompleteMotionGestureInputEventListener: CompleteMotionGestureInputEventListener {
    fileprivate static let instance: NoCompleteMotionGestureInputEventListener! = NoCompleteMotionGestureInputEventListener()
    

    public override init() {
        super.init()
    }
    

    open override func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open override func onCompleteMotionGestureInputEvent(_ completeMotionGestureInputEvent: CompleteMotionGestureInputEvent!) {
    }
    

    @discardableResult open class func getInstance() -> NoCompleteMotionGestureInputEventListener! {
        return NoCompleteMotionGestureInputEventListener.instance
    }
}

