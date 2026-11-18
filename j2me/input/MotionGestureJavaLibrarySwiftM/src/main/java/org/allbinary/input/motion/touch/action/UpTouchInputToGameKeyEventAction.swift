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
// package org.allbinary.input.motion.touch.action

import J2SEForSwiftLibrary
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.NullUtil

open class UpTouchInputToGameKeyEventAction: GameKeyCompleteMotionGestureInputEvent {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    

    @discardableResult open class func getInstance() -> GameKeyCompleteMotionGestureInputEvent! {
        if (UpTouchInputToGameKeyEventAction.instance === NullUtil.getInstance().NULL_OBJECT) {
            UpTouchInputToGameKeyEventAction.instance = UpTouchInputToGameKeyEventAction()
        }
        return (UpTouchInputToGameKeyEventAction.instance as! GameKeyCompleteMotionGestureInputEvent)
    }
    

    public init() {
        super.init("Up Action", TouchMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    }
}

