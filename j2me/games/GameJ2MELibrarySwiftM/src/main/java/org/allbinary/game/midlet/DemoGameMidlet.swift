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
// import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.system.security.licensing.ClientInformationFactory
// import org.allbinary.thread.PrimaryThreadPool
// import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable
// import org.allbinary.util.ABHashtable

open class DemoGameMidlet: GameMidlet {
    

    public override init(_ clientInformationFactory: ClientInformationFactory!) {
        super.init(clientInformationFactory)
    }
    

    @discardableResult open func isContinue() -> Bool {
        let hashtable: ABHashtable! = self.getStartStateHashtable()
        if (hashtable != nil && hashtable.size() > 0) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func getHighestLevel() -> Int32 {
        return 1
    }
    

    @discardableResult open func createDemoGameCanvasRunnableInterface() -> GameCanvasRunnableInterface! {
        self.logUtil.putF(self.commonStrings.NOT_IMPLEMENTED, self, self.commonStrings.CREATE)
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE
    }
    

    @discardableResult open func createGameCanvasRunnable(_ allBinaryGameLayerManager: AllBinaryGameLayerManager!) -> GameCanvasRunnableInterface! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func createGameCanvasRunnableInterface() -> GameCanvasRunnableInterface! {
        return self.createGameCanvasRunnable(self.createGameLayerManager())
    }
    

    open func demoSetup() {
    }
    

    open func postDemoSetup() {
    }
    

    open override func setDemo() {
        self.logUtil.putF(self.commonStrings.START, self, "setDemo")
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        PrimaryThreadPool.getInstance().runTask(DemoRunnable(self))
    }
    

    open override func createGame() {
        let CREATE_GAME: String! = "createGame"
        self.logUtil.putF(self.commonStrings.START, self, CREATE_GAME)
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        let hashtable: ABHashtable! = self.getStartStateHashtable()
        self.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE)
        PrimaryThreadPool.getInstance().runTask(CreateGameRunnable(self, hashtable))
        self.logUtil.putF(self.commonStrings.END, self, CREATE_GAME)
    }
    

    @discardableResult open func isReady() -> Bool {
        return true
    }
}

