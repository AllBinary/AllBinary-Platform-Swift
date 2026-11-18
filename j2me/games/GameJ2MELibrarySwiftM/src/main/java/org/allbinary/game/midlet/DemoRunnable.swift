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
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class DemoRunnable: JObject, Runnable {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var demoGameMidlet: DemoGameMidlet! = nil
    fileprivate var startDemoGameMidletEvent: DemoGameMidletEvent! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    }
    

    public init(_ demoGameMidlet: DemoGameMidlet!) {
        super.init()
        self.initFields()
        self.demoGameMidlet = demoGameMidlet
        self.startDemoGameMidletEvent = DemoGameMidletEvent(self.demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO)
    }
    

    open func run() {
        do {
            self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").toString(), self, self.commonStrings.RUN)
            self.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, ProgressCanvasFactory.getInstance())
            self.demoGameMidlet.setGameCanvasRunnableInterface(self.demoGameMidlet.createDemoGameCanvasRunnableInterface())
            self.demoGameMidlet.demoSetup()
            DemoGameMidletEventHandler.getInstance().fireEvent(self.startDemoGameMidletEvent)
            self.demoGameMidlet.startGameCanvasRunnableInterface()
            self.demoGameMidlet.postDemoSetup()
            self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

