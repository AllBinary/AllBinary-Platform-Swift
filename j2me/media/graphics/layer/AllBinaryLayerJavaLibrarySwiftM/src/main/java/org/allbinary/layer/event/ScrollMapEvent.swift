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
// package org.allbinary.layer.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class ScrollMapEvent: AllBinaryEventObject {
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.dx = 0
    self.dy = 0
    }
    

    public override init(_ anyType: JObject!) {
        super.init(anyType)
        self.initFields()
    }
    

    open func setDx(_ dx: Int32) {
        self.dx = dx
    }
    

    @discardableResult open func getDx() -> Int32 {
        return self.dx
    }
    

    open func setDy(_ dy: Int32) {
        self.dy = dy
    }
    

    @discardableResult open func getDy() -> Int32 {
        return self.dy
    }
    

    open func setDxDy(_ dx: Int32, _ dy: Int32) {
        self.dx = dx
        self.dy = dy
    }
}

