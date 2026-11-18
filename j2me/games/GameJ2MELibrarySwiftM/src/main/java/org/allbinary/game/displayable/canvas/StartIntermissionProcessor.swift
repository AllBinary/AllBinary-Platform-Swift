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
// import org.allbinary.canvas.Processor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class StartIntermissionProcessor: Processor {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var gameCanvas: AllBinaryGameCanvas! = nil
    fileprivate var WAIT: Int64 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    self.WAIT = 5000
    }
    

    public init(_ gameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.gameCanvas = gameCanvas
    }
    

    open override func process() {
        if (self.gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(self.WAIT)) {
            self.logUtil.putF("Intermission End", self, self.commonStrings.PROCESS)
            self.gameCanvas.getStartIntermissionInterface().setEnabled(false)
        }
    }
}

