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
// package org.allbinary.game.score.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.GameInfo
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.displayable.canvas.GameCommandCanvas
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.game.score.HighScoreCommandsFactory
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresCanvasInputProcessor
// import org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresHelperBase
// import org.allbinary.game.score.HighScoresPaintable
// import org.allbinary.game.score.HighScoresResultsListener
// import org.allbinary.game.score.NoHighScoresFactory
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.SimpleTextPaintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.SecondaryThreadPool

open class HighScoresCanvas: GameCommandCanvas, HighScoresResultsListener {
    public static let NAME: String! = "HighScoresCanvas"
    fileprivate var paintable: Paintable! = nil
    fileprivate var highScoreCommandsFactory: HighScoreCommandsFactory! = nil
    fileprivate var waitPaintable: SimpleTextPaintable! = nil
    fileprivate var highScoresPaintable: HighScoresPaintable! = nil
    fileprivate var highScoresFactoryInterface: HighScoresFactoryInterface! = nil
    public var colorFillPaintable: ColorFillBasePaintable! = nil
    fileprivate var highScoresHelper: HighScoresHelperBase! = nil
    fileprivate var gameInfo: GameInfo! = nil
    fileprivate var highScoresCanvasInputProcessor: HighScoresCanvasInputProcessor! = nil
    fileprivate var currentCommand: Command! = nil
    public var hasPainted: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.paintable = NullPaintable.getInstance()
    self.highScoreCommandsFactory = HighScoreCommandsFactory.getInstance()
    self.waitPaintable = SimpleTextPaintable(self.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE)
    
    
    
    self.highScoresHelper = HighScoresHelperBase()
    
    
    self.currentCommand = self.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0]
    self.hasPainted = false
    }
    

    public init(_ commandListener: CommandListener!, _ allBinaryGameLayerManager: AllBinaryGameLayerManager!, _ gameInfo: GameInfo!, _ paintable: HighScoresPaintable!, _ highScoresFactoryInterface: HighScoresFactoryInterface!, _ highScoresCanvasInputProcessorFactoryInterface: HighScoresCanvasInputProcessorFactoryInterface!) {
        super.init(commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.highScoresPaintable = paintable
        self.highScoresFactoryInterface = highScoresFactoryInterface
        self.highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance(self)
        self.gameInfo = gameInfo
        self.waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        self.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        self.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
        if (self.highScoresHelper.getHighScoresArray().length == NoHighScoresFactory.getInstance().NO_HIGH_SCORES.length) {
            self.setPaintable(self.waitPaintable)
        } else {
            self.logUtil.putF("Show HighScores that are already loaded", self, self.commonStrings.CONSTRUCTOR)
            self.updateCommand(self.currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        }
        SecondaryThreadPool.getInstance().runTask(HighScoreRunnable(self))
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    }
    

    open override func `open`() {
        super.`open`()
        self.highScoresCanvasInputProcessor.`open`()
    }
    

    open override func close() {
        super.close()
        self.highScoresCanvasInputProcessor.close()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.colorFillPaintable.paint(graphics)
        self.paintable.paint(graphics)
        if (self.waitPaintable !== self.paintable) {
            self.highScoresCanvasInputProcessor.paint(graphics)
        }
        super.paint(graphics)
        self.hasPainted = true
    }
    

    open func executeUpdate() {
        do {
            self.highScoresFactoryInterface.fetchHighScores(self.getGameInfo(), self)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult fileprivate func getHighScoresPaintable() -> HighScoresPaintable! {
        return self.highScoresPaintable
    }
    

    open override func setHighScoresArray(_ highScoresArray: JArray<HighScores?>!) {
        do {
            if (highScoresArray != nil) {
                self.logUtil.putF(StringMaker().append(self.commonStrings.START).appendint(highScoresArray.length).toString(), self, "setHighScoresArray")
            } else {
                self.logUtil.putF(self.commonStrings.START, self, "setHighScoresArray")
            }
            self.highScoresHelper.setHighScoresArray(highScoresArray)
            self.updateCommand(self.currentCommand)
            self.setPaintable(self.getHighScoresPaintable())
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func updateCommand(_ command: Command!) {
        self.logUtil.putF(StringMaker().append(self.commonStrings.START).append(self.stringUtil.toString(command)).toString(), self, self.commonStrings.UPDATE)
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        if (self.highScoreCommandsFactory.isHighScoreCommand(command)) {
            let index: Int32 = self.highScoreCommandsFactory.getIndex(command)
            var nextIndex: Int32 = index &+ 1
            let highScoresArray: JArray<HighScores?>! = self.highScoresHelper.getHighScoresArray()
            if (nextIndex >= highScoresArray.length) {
                nextIndex = 0
            }
            if (highScoresArray.length > 0) {
                self.getHighScoresPaintable().setHighScores(highScoresArray[index])
            } else {
                self.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance())
            }
            if (index != nextIndex) {
                self.removeAllCommands()
                self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
                self.addCommand(self.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex])
            }
        }
        self.currentCommand = command
        self.close()
        super.initMenu()
        self.`open`()
        self.repaintBehavior.onChangeRepaint(self)
    }
    

    @discardableResult open func getGameInfo() -> GameInfo! {
        return self.gameInfo
    }
    

    fileprivate func setPaintable(_ paintable: Paintable!) {
        self.paintable = paintable
        self.repaintBehavior.onChangeRepaint(self)
    }
}

