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
// package org.allbinary.input.motion.trackball.action

import J2SEForSwiftLibrary
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.input.motion.gesture.TrackballMotionGestureFactory
// import org.allbinary.logic.NullUtil

open class RightTrackballInputToGameKeyEventAction: GameKeyCompleteMotionGestureInputEvent {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    

    @discardableResult open class func getInstance() -> GameKeyCompleteMotionGestureInputEvent! {
        if (RightTrackballInputToGameKeyEventAction.instance === NullUtil.getInstance().NULL_OBJECT) {
            RightTrackballInputToGameKeyEventAction.instance = RightTrackballInputToGameKeyEventAction()
        }
        return (RightTrackballInputToGameKeyEventAction.instance as! GameKeyCompleteMotionGestureInputEvent)
    }
    

    public init() {
        super.init("Right Action", TrackballMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    }
}

