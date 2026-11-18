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
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.score.NoHighScoresFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class NullGameCanvas: AllBinaryGameCanvas {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public static let NO_GAME: String! = "No Background Game"
    // TYPE is the static of the superclass
    fileprivate var runningNull: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.runningNull = true
    }
    

    @discardableResult fileprivate static func createNull() -> NullGameCanvas! {
        do {
            return NullGameCanvas(AllBinaryGameLayerManager.getNullInstance())
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open class func getInstance() -> NullGameCanvas! {
        if (NullGameCanvas.instance === NullUtil.getInstance().NULL_OBJECT) {
            NullGameCanvas.instance = NullGameCanvas.createNull()
        }
        return (NullGameCanvas.instance as! NullGameCanvas)
    }
    

    @discardableResult open class func createCanvas(_ gameLayerManager: AllBinaryGameLayerManager!) -> NullGameCanvas! {
        let nullGameCanvas: NullGameCanvas! = NullGameCanvas(gameLayerManager)
        nullGameCanvas.setInitialized(true)
        nullGameCanvas.setTitle(NullGameCanvas.NO_GAME)
        return nullGameCanvas
    }
    

    public init(_ gameLayerManager: AllBinaryGameLayerManager!) {
        super.init(NullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false)
        self.initFields()
        super.setWait(1200)
    }
    

    @discardableResult open override func isGameOver() -> Bool {
        return false
    }
    

    open override func setRunning(_ running: Bool) {
        self.runningNull = running
    }
    

    @discardableResult open override func isRunning() -> Bool {
        return self.runningNull
    }
    

    open override func pause() {
        self.setPaused(true)
    }
    

    open override func unPause() {
        self.setPaused(false)
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.setCommandListener(cmdListener)
    }
    

    open override func buildGameInit(_ isProgress: Bool) {
    }
    

    open override func draw(_ graphics: Graphics!) {
    }
    

    open override func run() {
        do {
            self.logUtil.putF(self.commonStrings.START_RUNNABLE, self, self.commonStrings.RUN)
            self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open override func getType() -> Int32 {
        return NullGameCanvas.TYPE
    }
}

