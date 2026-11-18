/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// import org.allbinary.canvas.Processor
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class InitGameProcessor: Processor {
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
        if (ProgressCanvasFactory.getInstance().isInGame()) {
            self.gameCanvas.setProcessGameProcessorInit()
        }
    }
}

