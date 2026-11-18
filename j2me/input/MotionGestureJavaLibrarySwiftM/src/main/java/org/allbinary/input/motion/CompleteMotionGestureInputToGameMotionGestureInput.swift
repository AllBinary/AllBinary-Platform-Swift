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
// package org.allbinary.input.motion

import J2SEForSwiftLibrary
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
// import org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CompleteMotionGestureInputToGameMotionGestureInput: JObject {
    fileprivate static let instance: CompleteMotionGestureInputToGameMotionGestureInput! = CompleteMotionGestureInputToGameMotionGestureInput()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CompleteMotionGestureInputToGameMotionGestureInput! {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    }
    

    open func `init`() {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        do {
            PreLogUtil.put("Compound Motion Gestures", self, commonStrings.INIT)
            let motionGestureConfiguration: MotionGestureConfiguration! = MotionGestureConfigurationFactory.getInstance()
            let touchMotionGestureFactory: TouchMotionGestureFactory! = TouchMotionGestureFactory.getInstance()
            var list: BasicArrayList! = BasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.DOWN)
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.UP)
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD()
            list.add(touchMotionGestureFactory.RELEASED)
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance())
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

