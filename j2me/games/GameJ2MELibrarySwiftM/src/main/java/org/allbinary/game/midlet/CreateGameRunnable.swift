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
// package org.allbinary.game.midlet

import J2SEForSwiftLibrary
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable

open class CreateGameRunnable: JObject, Runnable {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var demoGameMidlet: DemoGameMidlet! = nil
    fileprivate var hashtable: ABHashtable! = nil
    fileprivate var startGameMidletEvent: DemoGameMidletEvent! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    }
    

    public init(_ demoGameMidlet: DemoGameMidlet!, _ hashtable: ABHashtable!) {
        super.init()
        self.initFields()
        self.demoGameMidlet = demoGameMidlet
        self.hashtable = hashtable
        self.startGameMidletEvent = DemoGameMidletEvent(self, DemoGameMidletStateFactory.getInstance().START_GAME)
    }
    

    open func run() {
        do {
            self.logUtil.putF(self.commonStrings.START_RUNNABLE, self, self.commonStrings.RUN)
            let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
            self.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas)
            self.demoGameMidlet.stopGameCanvasRunnableInterface()
            self.demoGameMidlet.setGameCanvasRunnableInterface(self.demoGameMidlet.createGameCanvasRunnableInterface())
            self.demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(self.hashtable)
            self.demoGameMidlet.startGameCanvasRunnableInterface()
            DemoGameMidletEventHandler.getInstance().fireEvent(self.startGameMidletEvent)
            self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

