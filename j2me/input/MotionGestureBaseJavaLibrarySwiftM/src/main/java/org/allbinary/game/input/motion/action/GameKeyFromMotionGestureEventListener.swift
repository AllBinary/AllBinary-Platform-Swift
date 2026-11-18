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
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings

open class GameKeyFromMotionGestureEventListener: CompleteMotionGestureInputEventListener {
    public var logUtil: LogUtil! = nil
    fileprivate var previousGameKeyEvent: GameKeyEvent! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.previousGameKeyEvent = GameKeyEvent.NONE
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open override func onCompleteMotionGestureInputEvent(_ completeMotionGestureInputEvent: CompleteMotionGestureInputEvent!) {
        do {
            let gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent! = (completeMotionGestureInputEvent as! GameKeyCompleteMotionGestureInputEvent)
            let gameKeyEvent: GameKeyEvent! = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent()
            if (gameKeyEvent !== self.previousGameKeyEvent) {
                if (self.previousGameKeyEvent !== GameKeyEvent.NONE) {
                    UpGameKeyEventHandler.getInstance().fireEvent(self.previousGameKeyEvent)
                }
                self.previousGameKeyEvent = gameKeyEvent
                if (gameKeyEvent != nil && gameKeyEvent !== GameKeyEvent.NONE) {
                    DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

