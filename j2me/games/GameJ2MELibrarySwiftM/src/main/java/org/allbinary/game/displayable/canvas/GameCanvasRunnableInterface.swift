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
// import javax.microedition.lcdui.ItemStateListener
// import org.allbinary.game.state.GameStateCompositeInterface
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.thread.RunnableInterface
// import org.allbinary.util.ABHashtable

public protocol GameCanvasRunnableInterface: AnyObject, RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface {
    @discardableResult func getTitle() -> String!
    @discardableResult func isInitialized() -> Bool
    @discardableResult func isPaused() -> Bool
    func unPause()
    func pause()
    @discardableResult func isHighScoreSubmitted() -> Bool
    func setHighScoreSubmitted(_ highScoreSubmitted: Bool)
    func processGameOver()
    @discardableResult func isGameOver() -> Bool
    func initCommands(_ cmdListener: CommandListener!)
    @discardableResult func getCurrentStateHashtable() -> ABHashtable!
    @discardableResult func getLoadStateHashtable() -> ABHashtable!
    func setLoadStateHashtable(_ hashtable: ABHashtable!)
    @discardableResult func getType() -> Int32
}


