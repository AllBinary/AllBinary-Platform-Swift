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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonStrings

open class CompleteMotionGestureInputEvent: AllBinaryEventObject, CompleteMotionGestureInputInterface {
    public var logUtil: LogUtil! = nil
    fileprivate var name: String! = nil
    fileprivate var motionGestureInput: MotionGestureInput! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.name = StringUtil.getInstance().EMPTY_STRING
    self.motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION
    }
    

    public init(_ name: String!, _ motionGestureInput: MotionGestureInput!) {
        super.init(motionGestureInput)
        self.initFields()
        self.setName(name)
        do {
            self.setMotionGestureInput(motionGestureInput)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func setName(_ name: String!) {
        self.name = name
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    open func setMotionGestureInput(_ motionGestureInput: MotionGestureInput!) {
        self.motionGestureInput = motionGestureInput
    }
    

    @discardableResult open func getMotionGestureInput() -> MotionGestureInput! {
        return self.motionGestureInput
    }
}

