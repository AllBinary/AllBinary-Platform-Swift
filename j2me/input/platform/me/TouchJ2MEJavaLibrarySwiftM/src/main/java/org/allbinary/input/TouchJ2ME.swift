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
// package org.allbinary.input

import J2SEForSwiftLibrary
// import org.allbinary.input.motion.AllMotionRecognizer
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.input.motion.gesture.observer.GameMotionGestureListener
// import org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

//TouchJ2ME
open class TouchJ2ME: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var DEVICE_ID: Int32 = 0
    fileprivate var motionRecognizer: AllMotionRecognizer! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.DEVICE_ID = 0
    self.motionRecognizer = AllMotionRecognizer()
    }
    

    public override init() {
        super.init()
        self.initFields()
        let motionGesturesHandler: BasicMotionGesturesHandler! = self.motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler()
        motionGesturesHandler.addListenerInterface(GameMotionGestureListener(MotionGestureReceiveInterfaceFactory.getInstance()))
    }
    

    open func pointerDragged(_ x: Int32, _ y: Int32) {
        do {
            self.motionRecognizer.processDraggedMotionEvent(x, y, self.DEVICE_ID, 0)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func pointerPressed(_ x: Int32, _ y: Int32) {
        do {
            self.motionRecognizer.processStartMotionEvent(x, y, self.DEVICE_ID, 0)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func pointerReleased(_ x: Int32, _ y: Int32) {
        do {
            self.motionRecognizer.processEndMotionEvent(x, y, self.DEVICE_ID, 0)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

