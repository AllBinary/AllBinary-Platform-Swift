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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.game.input.CompleteMotionGestureInputEventHandler
// import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.mapping.InputMappingInterface
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.paint.ProcessPaintable
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.TimeDelayHelper

open class TouchButtonsPaintableComposite: ProcessPaintable, CompleteMotionGestureInputEventListenerInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var inputMappingInterface: InputMappingInterface! = nil
    public var touchButtonsPaintable: TouchButtonsMappingPaintable! = nil
    fileprivate var timeHelper: TimeDelayHelper! = nil
    fileprivate var released: Bool = false
    fileprivate var METHOD_NAME: String! = nil
    fileprivate var RELEASE: String! = nil
    fileprivate var FAST_REPEAT: String! = nil
    fileprivate var IGNORE: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    self.timeHelper = TimeDelayHelper(250)
    self.released = true
    self.METHOD_NAME = "onCompleteMotionGestureInputEvent"
    self.RELEASE = "Ignoring: MotionGestureInput Release"
    self.FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
    self.IGNORE = "Ignoring: Until Released"
    }
    

    public init(_ inputMappingInterface: InputMappingInterface!, _ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.inputMappingInterface = inputMappingInterface
        CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(self)
        self.touchButtonsPaintable = TouchButtonsMappingPaintable(basicColor)
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onCompleteMotionGestureInputEvent(_ completeMotionGestureInputEvent: CompleteMotionGestureInputEvent!) {
        do {
            self.logUtil.putF(self.commonStrings.START, self, "onCompleteMotionGestureInputEvent")
            let touchMotionGestureFactory: TouchMotionGestureFactory! = TouchMotionGestureFactory.getInstance()
            let gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent! = (completeMotionGestureInputEvent as! GameKeyCompleteMotionGestureInputEvent)
            let gameKey: GameKey! = gameKeyCompleteMotionGestureInputEvent.getGameKey()
            let motionGestureInput: MotionGestureInput! = completeMotionGestureInputEvent.getMotionGestureInput()
            if (motionGestureInput === touchMotionGestureFactory.RELEASED) {
                self.logUtil.putF(self.RELEASE, self, self.METHOD_NAME)
                self.released = true
                return
            }
            if (motionGestureInput === TouchMotionGestureFactory.getInstance().NO_MOTION && !self.timeHelper.isTimeTNT()) {
                self.logUtil.putF(self.FAST_REPEAT, self, self.METHOD_NAME)
                return
            }
            if (!self.released) {
                self.logUtil.putF(self.IGNORE, self, self.METHOD_NAME)
                return
            }
            self.released = false
            self.logUtil.putF(StringMaker().append("GameKey: ").append(StringUtil.getInstance().toString(gameKey)).append(" MotionGestureInput: ").append(StringUtil.getInstance().toString(motionGestureInput)).toString(), self, self.METHOD_NAME)
            self.inputMappingInterface.processInputMapping(gameKey, motionGestureInput)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func process() {
        CompleteMotionGestureInputEventHandler.getInstance().removeListener(self)
    }
}

