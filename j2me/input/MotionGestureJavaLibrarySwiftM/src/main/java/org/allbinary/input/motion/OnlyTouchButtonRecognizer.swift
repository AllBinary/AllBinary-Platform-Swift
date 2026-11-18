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
// import org.allbinary.input.motion.button.TouchButtonRecognizer

open class OnlyTouchButtonRecognizer: MotionRecognizer {
    fileprivate var touchButtonRecognizer: TouchButtonRecognizer! = nil
    fileprivate var touchButtonProcessing: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    self.touchButtonProcessing = false
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.touchButtonRecognizer = TouchButtonRecognizer()
    }
    

    open override func processStartMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            self.touchButtonProcessing = true
        }
    }
    

    open override func processEndMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (self.touchButtonProcessing) {
            self.touchButtonProcessing = false
        }
        if (self.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
            return
        }
    }
    

    open override func processDraggedMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
        if (self.touchButtonProcessing) {
            self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)
        }
    }
}

