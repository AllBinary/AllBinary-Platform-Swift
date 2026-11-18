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
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

open class CompleteMotionGestureInputToGameMotionGestureInput: JObject {
    fileprivate static let instance: CompleteMotionGestureInputToGameMotionGestureInput! = CompleteMotionGestureInputToGameMotionGestureInput()
    public var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> CompleteMotionGestureInputToGameMotionGestureInput! {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    }
    

    open func `init`() {
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", self, self.commonStrings.INIT)
    }
}

