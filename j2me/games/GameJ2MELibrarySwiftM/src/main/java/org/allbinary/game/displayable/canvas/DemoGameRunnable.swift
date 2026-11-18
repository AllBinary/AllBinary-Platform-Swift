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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory

open class DemoGameRunnable: GameRunnable {
    public var logUtil: LogUtil! = nil
    fileprivate var demoCanvas: DemoCanvas! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    }
    

    public init(_ demoCanvas: DemoCanvas!) {
        super.init()
        self.initFields()
        self.demoCanvas = demoCanvas
    }
    

    open override func run() {
        do {
            self.demoCanvas.getLoopTimeHelperP().setStartTime(self.gameTickTimeDelayHelper.setStartTime())
            self.demoCanvas.processGame()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func processLoopSleep() {
        self.demoCanvas.processLoopSleep()
    }
}

