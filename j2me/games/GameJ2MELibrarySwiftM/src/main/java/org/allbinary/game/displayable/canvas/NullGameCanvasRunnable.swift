/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import javax.microedition.lcdui.Item
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable

open class NullGameCanvasRunnable: JObject, GameCanvasRunnableInterface {
    public static let NULL_GAME_CANVAS_RUNNABLE: NullGameCanvasRunnable! = NullGameCanvasRunnable()
    public var gameStateFactory: GameStateFactory! = nil

    private func initFields() {
    self.gameStateFactory = GameStateFactory.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getTitle() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return false
    }
    

    @discardableResult open func isPaused() -> Bool {
        return false
    }
    

    open func unPause() {
    }
    

    open func pause() {
    }
    

    @discardableResult open func isHighScoreSubmitted() -> Bool {
        return false
    }
    

    open func setHighScoreSubmitted(_ highScoreSubmitted: Bool) {
    }
    

    open func processGameOver() {
    }
    

    @discardableResult open func isGameOver() -> Bool {
        return false
    }
    

    open func initCommands(_ cmdListener: CommandListener!) {
    }
    

    @discardableResult open func getCurrentStateHashtable() -> ABHashtable! {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    @discardableResult open func getLoadStateHashtable() -> ABHashtable! {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    open func setLoadStateHashtable(_ hashtable: ABHashtable!) {
    }
    

    @discardableResult open func getType() -> Int32 {
        return -1
    }
    

    open func setGameState(_ gameState: GameState!) {
    }
    

    @discardableResult open func getGameState() -> GameState! {
        return self.gameStateFactory.NO_GAME_STATE
    }
    

    open func itemStateChanged(_ item: Item!) {
    }
    

    open func paint(_ graphics: Graphics!) {
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    @discardableResult open func isRunning() -> Bool {
        return false
    }
    

    open func setRunning(_ isRunning: Bool) {
    }
    

    open func setThread(_ thread: Thread!) {
    }
    

    open func run() {
    }
}

