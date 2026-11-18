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
// import javax.microedition.lcdui.Canvas

open class InputProcessor: JObject {
    public var gameInputStrings: GameInputStrings! = nil

    private func initFields() {
    self.gameInputStrings = GameInputStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
    }
    

    open func keyReleasedByDevice(_ canvas: Canvas!, _ keyCode: Int32, _ deviceId: Int32) {
    }
}

