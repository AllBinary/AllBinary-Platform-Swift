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
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class RunnableCanvasSingleThreadStartRunnable: GameRunnable {
    public var logUtil: LogUtil! = nil
    fileprivate var runnableCanvas: RunnableCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    }
    

    public init(_ demoCanvas: RunnableCanvas!) {
        super.init()
        self.initFields()
        self.runnableCanvas = demoCanvas
    }
    

    open override func run() {
        do {
            self.runnableCanvas.run()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func processLoopSleep() {
        self.runnableCanvas.processLoopSleep()
    }
}

