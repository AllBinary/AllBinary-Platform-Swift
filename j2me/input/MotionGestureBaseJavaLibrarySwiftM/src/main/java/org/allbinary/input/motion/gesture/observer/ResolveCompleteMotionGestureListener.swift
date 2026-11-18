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
// import org.allbinary.game.input.CompleteMotionGestureInputEventHandler
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener
// import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

open class ResolveCompleteMotionGestureListener: JObject, CompleteMotionGestureListenerInterface {
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", self, commonStrings.CONSTRUCTOR)
        CompleteMotionGestureInputEventHandler.getInstance().addListener(GameKeyFromMotionGestureEventListener())
    }
    

    open func onMotionGestureCompleted(_ list: BasicArrayList!) {
        let configuration: MotionGestureConfiguration! = MotionGestureConfigurationFactory.getInstance()
        let commandActionsList: BasicArrayList! = configuration.getAssociateCommandActionsList()
        let size: Int32 = commandActionsList.size()
        do {
            var index: Int32 = size &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let association: MotionGestureToMotionGestureActionAssociation! = (commandActionsList.objectArray[index] as! MotionGestureToMotionGestureActionAssociation)
            if (association.isMotionGestureArrayEquals(list) == true) {
                let completeMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent! = (association.getCommandAction() as! GameKeyCompleteMotionGestureInputEvent)
                CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent)
                break
            }
            }
        }
    }
}

