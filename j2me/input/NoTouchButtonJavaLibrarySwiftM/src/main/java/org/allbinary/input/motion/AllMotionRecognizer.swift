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

open class AllMotionRecognizer: JObject {
    fileprivate static var index: Int32 = 0
    fileprivate var id: Int32 = 0

    private func initFields() {
    
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.id = jPostIncrement(&AllMotionRecognizer.index)
    }
    

    open func processStartMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
    }
    

    open func processEndMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
    }
    

    open func processDraggedMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
    }
    

    open func processMovedMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
    }
    

    open func processScrolledMotionEvent(_ x: Int32, _ y: Int32, _ deviceId: Int32, _ modifiers: Int32) {
    }
    

    @discardableResult open func getId() -> Int32 {
        return self.id
    }
}

