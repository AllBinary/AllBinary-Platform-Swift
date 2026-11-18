/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ARunnable

open class RepaintRunnable: ARunnable {
    fileprivate var canvas: Canvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ canvas: Canvas!) {
        super.init()
        self.initFields()
        self.canvas = canvas
    }
    

    open override func run() {
        do {
            self.canvas.repaint()
            DisplayInfoSingleton.getInstance().process()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

