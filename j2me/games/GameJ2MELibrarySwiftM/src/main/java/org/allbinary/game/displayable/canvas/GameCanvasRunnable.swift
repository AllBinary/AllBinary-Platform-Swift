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
// import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory

open class GameCanvasRunnable: GameRunnable {
    public var logUtil: LogUtil! = nil
    fileprivate var gameTickDisplayInfoSingleton: GameTickDisplayInfoSingleton! = nil
    fileprivate var allBinaryGameCanvas: AllBinaryGameCanvas! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    }
    

    public init(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    open override func run() {
        do {
            self.allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(self.gameTickTimeDelayHelper.setStartTime())
            self.gameTickDisplayInfoSingleton.update()
            self.allBinaryGameCanvas.processGame()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func processLoopSleep() {
        self.allBinaryGameCanvas.processLoopSleep()
    }
}

