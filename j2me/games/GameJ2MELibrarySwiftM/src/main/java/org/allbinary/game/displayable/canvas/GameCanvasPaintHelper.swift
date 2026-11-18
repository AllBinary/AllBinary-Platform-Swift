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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.ProcessPaintable

open class GameCanvasPaintHelper: ProcessPaintable {
    fileprivate var gameCanvas: AllBinaryGameCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ gameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.gameCanvas = gameCanvas
    }
    

    open override func process() {
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.gameCanvas.draw(graphics)
    }
}

