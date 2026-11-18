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
// import javax.microedition.lcdui.Graphics

open class TestInputExample: JObject, TestInputInterface {
    fileprivate var testValue: Int32 = 0

    private func initFields() {
    self.testValue = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func up() {
    }
    

    open func down() {
    }
    

    open func left() {
        self.testValue &+= 1
    }
    

    open func right() {
        self.testValue &-= 1
    }
    

    open func strafeLeft() {
    }
    

    open func strafeRight() {
    }
    

    open func paint(_ graphics: Graphics!) {
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
}

