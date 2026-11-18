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
// package org.allbinary.game.input.mapping

import J2SEForSwiftLibrary
// import org.allbinary.game.input.mapping.event.InputMappingEvent
// import org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory
// import org.allbinary.input.motion.button.BasicTouchInputFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

open class MotionInputMappingEventListener: JObject, InputMappingEventListenerInterface {

    public override init() {
        super.init()
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onInputMappingEvent(_ inputMappingEvent: InputMappingEvent!) {
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().updateAll()
        BasicTouchInputFactory.getInstance().updateAll(inputMappingEvent.getInputToGameKeyMapping())
    }
}

