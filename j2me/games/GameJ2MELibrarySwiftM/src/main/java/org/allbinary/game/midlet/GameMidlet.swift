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
// import java.util.Enumeration
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Displayable
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.midlet.MIDletStateChangeException
// import org.allbinary.J2MEUtil
// import org.allbinary.TsUtil
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.FullScreenUtil
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.debug.DebugFactory
// import org.allbinary.debug.DebugInterface
// import org.allbinary.game.GameAdState
// import org.allbinary.game.GameInfo
// import org.allbinary.game.GameMode
// import org.allbinary.game.GameStrings
// import org.allbinary.game.GameTypeFactory
// import org.allbinary.game.PlayerTypesFactory
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.GameOptionsForm
// import org.allbinary.game.configuration.GameOptionsFormFactory
// import org.allbinary.game.configuration.InGameFeatures
// import org.allbinary.game.configuration.InGameOptionsForm
// import org.allbinary.game.configuration.InGameOptionsFormFactory
// import org.allbinary.game.configuration.LoadGameForm
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.event.GameFeatureEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFormUtil
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.configuration.persistance.GamePersistanceSingleton
// import org.allbinary.game.configuration.persistance.KeyValuePersistance
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.BasicPaintablesCanvas
// import org.allbinary.game.displayable.canvas.DemoCanvas
// import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
// import org.allbinary.game.displayable.canvas.GameEventHandlerUtil
// import org.allbinary.game.displayable.canvas.GameInputMappingCanvas
// import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas
// import org.allbinary.game.displayable.canvas.MenuListener
// import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable
// import org.allbinary.game.input.TextNotificationUtil
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.game.paint.help.HelpPaintable
// import org.allbinary.game.score.HighScoreCommands
// import org.allbinary.game.score.HighScoreCommandsFactory
// import org.allbinary.game.score.displayable.HighScoreTextBox
// import org.allbinary.game.score.displayable.HighScoreUtil
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.ResizableListenerHandler
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorChangeEventHandler
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.screen.AboutCommandProcessor
// import org.allbinary.graphics.displayable.screen.AboutPaintableFactory
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.graphics.displayable.screen.WebCommandProcessor
// import org.allbinary.input.AllBinarySensorManager
// import org.allbinary.input.event.VirtualKeyboardEventHandler
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.ClientInformationFactory
// import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory
// import org.allbinary.logic.system.security.licensing.LockableFeature
// import org.allbinary.logic.system.security.licensing.LockableFeatureFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.media.audio.AllBinaryMediaManager
// import org.allbinary.midlet.MidletStrings
// import org.allbinary.midlet.ProgressMidlet
// import org.allbinary.thread.NullThread
// import org.allbinary.thread.ThreadFactoryUtil
// import org.allbinary.thread.ThreadUtil
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

open class GameMidlet: ProgressMidlet {
    fileprivate var enumerationUtil: EnumerationUtil! = nil
    public var basicColorFactory: BasicColorFactory! = nil
    public var features: Features! = nil
    public var midletStrings: MidletStrings! = nil
    public var myCommandsFactory: MyCommandsFactory! = nil
    public var gameStrings: GameStrings! = nil
    public var gameAdStateFactory: GameAdStateFactory! = nil
    public var gameStateFactory: GameStateFactory! = nil
    public var tsUtil: TsUtil! = nil
    fileprivate var DISPLAYABLE: String! = nil
    fileprivate var COMMAND_NAME: String! = nil
    fileprivate var NO_COMMAND: String! = nil
    fileprivate var NO_DISPLAYABLE: String! = nil
    fileprivate var COMMAND_ACTION: String! = nil
    fileprivate var PAUSE_APP_BACKGROUND: String! = nil
    fileprivate var UN_PAUSE_APP_BACKGROUND: String! = nil
    fileprivate var aboutCommandProcessor: AboutCommandProcessor! = nil
    fileprivate var webCommandProcessor: WebCommandProcessor! = nil
    fileprivate var gameMidletStateFactory: GameMidletStateFactory! = nil
    public var gameStartTimeHelper: TimeDelayHelper! = nil
    fileprivate var fullScreenUtil: FullScreenUtil! = nil
    fileprivate var debugInterface: DebugInterface! = nil
    fileprivate var allbinaryGameCanvasRunnableInterface: GameCanvasRunnableInterface! = nil
    fileprivate var thread: Thread! = nil
    fileprivate var loadGameForm: CommandForm! = nil
    fileprivate var isFullScreen: Bool = false
    fileprivate var resized: Bool = false
    fileprivate var startedBefore: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.enumerationUtil = EnumerationUtil.getInstance()
    self.basicColorFactory = BasicColorFactory.getInstance()
    self.features = Features.getInstance()
    self.midletStrings = MidletStrings.getInstance()
    self.myCommandsFactory = MyCommandsFactory.getInstance()
    self.gameStrings = GameStrings.getInstance()
    self.gameAdStateFactory = GameAdStateFactory.getInstance()
    self.gameStateFactory = GameStateFactory.getInstance()
    self.tsUtil = TsUtil.getInstance()
    self.DISPLAYABLE = " Displayable: "
    self.COMMAND_NAME = "command Name/Label: "
    self.NO_COMMAND = "No Command"
    self.NO_DISPLAYABLE = "No Displayable"
    self.COMMAND_ACTION = StringMaker().append("GameMidlet::").append(self.midletStrings.COMMAND_ACTION).toString()
    self.PAUSE_APP_BACKGROUND = "pauseAppBackground"
    self.UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
    self.aboutCommandProcessor = AboutCommandProcessor.getInstance()
    self.webCommandProcessor = WebCommandProcessor.getInstance()
    self.gameMidletStateFactory = GameMidletStateFactory.getInstance()
    self.gameStartTimeHelper = TimeDelayHelper(240)
    self.fullScreenUtil = FullScreenUtil.getInstance()
    
    self.allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE
    self.thread = NullThread.NULL_THREAD
    
    self.isFullScreen = false
    self.resized = false
    self.startedBefore = false
    }
    

    public override init(_ clientInformationFactory: ClientInformationFactory!) {
        super.init(clientInformationFactory)
        self.initFields()
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6)
        self.loadGameForm = CommandForm.getNullCommandForm()
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.`init`(self)
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance())
        GamePersistanceSingleton.getInstance().clear()
        self.debugInterface = DebugFactory.getInstance()
        self.`init`()
    }
    

    open func `init`() {
    }
    

    open func setDemo() {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func createGame() {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func mediaShutdown() {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func stopAll() {
    }
    

    open override func pauseApp() {
        self.pauseAppBackground(true)
        let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().stopAll()
    }
    

    open func pauseAppBackground(_ background: Bool) {
        self.logUtil.putF(self.commonStrings.START, self, self.PAUSE_APP_BACKGROUND)
        if (self.allbinaryGameCanvasRunnableInterface !== NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            self.allbinaryGameCanvasRunnableInterface.pause()
        } else {
            self.logUtil.putF("<<<<<< Null", self, self.PAUSE_APP_BACKGROUND)
        }
        AllBinarySensorManager.getInstance().shutdown()
    }
    

    open func unPauseApp() {
        self.unPauseAppBackground(true)
        let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().startAll()
    }
    

    open func unPauseAppBackground(_ background: Bool) {
        self.logUtil.putF(self.commonStrings.START, self, self.UN_PAUSE_APP_BACKGROUND)
        AllBinarySensorManager.getInstance().`init`()
        let gameCanvasRunnableInterface: GameCanvasRunnableInterface! = self.allbinaryGameCanvasRunnableInterface
        if (gameCanvasRunnableInterface !== NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            gameCanvasRunnableInterface.unPause()
        } else {
            self.logUtil.putF("<<<<<< Null", self, self.UN_PAUSE_APP_BACKGROUND)
        }
    }
    

    open override func destroyAppInRunnable(_ unconditional: Bool, _ isProgress: Bool) {
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        if (isProgress) {
            progressCanvas.start()
            self.commandAction(self.myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
        }
        self.destroyApp(unconditional)
        if (isProgress) {
            progressCanvas.end()
        }
    }
    

    open override func destroyApp(_ unconditional: Bool) {
        let METHOD_NAME: String! = "GameMidlet::destroyApp"
        do {
            PreLogUtil.put(GameStatisticsFactory.getInstance().toString(), self, METHOD_NAME)
            let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().stopAll()
            if (!self.isDestroyed()) {
                self.stopGameCanvasRunnableInterface()
                self.setGameCanvasRunnableInterface(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)
                self.mediaShutdown()
            } else {
                self.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", self, METHOD_NAME)
            }
            super.destroyApp(true)
            PreLogUtil.put(self.commonStrings.END, self, METHOD_NAME)
        } /* catch (Exception e): a thrown Java exception stops the program */
        self.logUtil.putF(self.commonStrings.END, self, METHOD_NAME)
    }
    

    open override func startApp() {
        do {
            let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().startAll()
            let START_APP: String! = "startApp"
            self.logUtil.putF(self.commonStrings.START, self, START_APP)
            let gameCanvasRunnableInterface: JObject! = self.allbinaryGameCanvasRunnableInterface
            if (gameCanvasRunnableInterface === NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
                self.gameMidletStateFactory.setCurrentGameState(self.gameStateFactory.NO_GAME_STATE)
                self.setDemo()
            } else {
                self.logUtil.putF("GameCanvasRunnableInterface is available", self, START_APP)
                if (gameCanvasRunnableInterface === self.getCurrentDisplayable()) {
                    self.unPauseAppBackground(false)
                } else {
                    self.logUtil.putF("GameCanvasRunnableInterface is not current displayable", self, START_APP)
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func commandAction(_ command: Command!, _ displayable: Displayable!) {
        do {
            var displayableAsString: String! = self.NO_DISPLAYABLE
            if (displayable != nil) {
                displayableAsString = displayable.toString()
            }
            var label: String! = self.NO_COMMAND
            if (command != nil) {
                label = command.getLabel()
            }
            PreLogUtil.put(StringMaker().append(self.COMMAND_NAME).append(label).append(self.DISPLAYABLE).append(displayableAsString).toString(), self, self.COMMAND_ACTION)
            let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
            let allbinaryGameCanvasRunnableInterface: GameCanvasRunnableInterface! = self.allbinaryGameCanvasRunnableInterface
            let gameCanvasRunnableInterface: JObject! = allbinaryGameCanvasRunnableInterface
            if (command === gameCommandsFactory.SHOW_GAME_CANVAS) {
                if (self.getDisplay().getCurrent() !== gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType()) {
                    self.setDisplay((gameCanvasRunnableInterface as! Displayable))
                }
                self.unPauseAppBackground(false)
            } else if (command === gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) {
                let menuListener: MenuListener! = (displayable as Any as? MenuListener)
                menuListener.close()
                self.setDisplay((gameCanvasRunnableInterface as! Displayable))
                self.unPauseAppBackground(false)
            } else if (command === gameCommandsFactory.EXIT_COMMAND) {
                if (GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0) {
                    self.exitProgress(true)
                }
                GameMidletEventHandler.getInstance().fireEvent(DemoGameMidletEvent(self, DemoGameMidletStateFactory.getInstance().NONE))
            } else if (command === gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) {
                self.exitProgress(false)
            } else if (command === gameCommandsFactory.START_COMMAND || command === gameCommandsFactory.RESTART_COMMAND || command === gameCommandsFactory.CONTINUE_COMMAND) {
                if (self.gameMidletStateFactory.getCurrentGameState() !== self.gameStateFactory.PLAYING_GAME_STATE || command === gameCommandsFactory.RESTART_COMMAND) {
                    if (self.gameStartTimeHelper.isTimeTNT()) {
                        if (command === gameCommandsFactory.START_COMMAND && self.isDemoLoading()) {
                            self.logUtil.putF("Trying to Start Game Before Loading Complete", self, self.midletStrings.COMMAND_ACTION)
                        } else {
                            self.startedBefore = true
                            self.createGame()
                            self.gameMidletStateFactory.setCurrentGameState(self.gameStateFactory.PLAYING_GAME_STATE)
                        }
                    } else {
                        self.logUtil.putF("Starting Game Too Often", self, self.midletStrings.COMMAND_ACTION)
                    }
                } else {
                    self.logUtil.putF("Already in playing state", self, self.COMMAND_ACTION)
                }
            } else if (command === gameCommandsFactory.BUY_COMMAND) {
                let inApplicationPurchaseFactory: InApplicationPurchaseFactory! = InApplicationPurchaseFactory.getInstance()
                let list: BasicArrayList! = LockableFeatureFactory.getInstance().getList()
                let lockableFeature: LockableFeature! = (list.get(0) as! LockableFeature)
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)) {
                    inApplicationPurchaseFactory.purchase(lockableFeature)
                } else {
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased")
                }
            } else if (command === gameCommandsFactory.QUIT_COMMAND) {
                if (self.gameStartTimeHelper.isTimeTNT()) {
                    if ((displayable is HighScoreTextBox)) {
                        let menuListener: MenuListener! = (displayable as Any as? MenuListener)
                        menuListener.close()
                    }
                    self.stopGameCanvasRunnableInterface()
                    self.gameMidletStateFactory.setCurrentGameState(self.gameStateFactory.NO_GAME_STATE)
                    self.setDemo()
                }
            } else if (command === self.myCommandsFactory.RESUME_COMMAND) {
                self.unPauseAppBackground(false)
            } else if (command === self.myCommandsFactory.PAUSE_COMMAND) {
                self.pauseAppBackground(false)
            } else if (command === self.myCommandsFactory.SET_DISPLAYABLE) {
                self.pauseAppBackground(false)
                self.setDisplay(displayable)
            } else if (command === gameCommandsFactory.SET_MENU_DISPLAYABLE) {
                self.pauseAppBackground(false)
                let menuListener: MenuListener! = (displayable as Any as? MenuListener)
                menuListener.`open`()
                self.setDisplay(displayable)
            } else if (command === gameCommandsFactory.START_TRACE) {
                self.debugInterface.start()
                let gameCanvas: AllBinaryGameCanvas! = (allbinaryGameCanvasRunnableInterface as! AllBinaryGameCanvas)
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE)
            } else if (command === gameCommandsFactory.STOP_TRACE) {
                self.pauseAppBackground(false)
                self.debugInterface.stop()
                self.unPauseAppBackground(false)
                let gameCanvas: AllBinaryGameCanvas! = (allbinaryGameCanvasRunnableInterface as! AllBinaryGameCanvas)
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE)
            } else if (command === gameCommandsFactory.DEFAULT_OPTIONS) {
                let tempDisplayable: Displayable! = displayable
                if ((tempDisplayable is GameOptionsForm)) {
                    GameFeatureFormUtil.getInstance().setDefault((tempDisplayable as! CommandForm))
                }
            } else if (command === GameInputMappingInstructionsCanvas.DISPLAY) {
                let tempDisplayable: Displayable! = displayable
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    let gameInputMappingCanvas: GameInputMappingCanvas! = (tempDisplayable as! GameInputMappingCanvas)
                    gameInputMappingCanvas.update()
                }
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getInputMappingInstructionsCanvas())
            } else if (HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)) {
                let tempDisplayable: Displayable! = displayable
                if ((tempDisplayable is HighScoresCanvas)) {
                    let highScoresCanvas: HighScoresCanvas! = (tempDisplayable as! HighScoresCanvas)
                    highScoresCanvas.updateCommand(command)
                }
            } else if (command === HighScoreCommands.getInstance().DISPLAY) {
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.createHighScoresCanvas())
            } else if (command === GameInputMappingInstructionsCanvas.CLOSE) {
                let menuListener: MenuListener! = (displayable as Any as? MenuListener)
                menuListener.close()
                self.commandAction(GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVAS)
            } else if (command === GameInputMappingCanvas.DISPLAY) {
                if (J2MEUtil.isHTML()) {
                    self.pauseAppBackground(false)
                }
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getInputMappingCanvas())
            } else if (command === GameInputMappingCanvas.DEFAULT) {
                let tempDisplayable: Displayable! = displayable
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    let gameInputMappingCanvas: GameInputMappingCanvas! = (tempDisplayable as! GameInputMappingCanvas)
                    gameInputMappingCanvas.setDefault()
                }
            } else if (command === InGameOptionsForm.DISPLAY) {
                self.pauseAppBackground(false)
                let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
                progressCanvas.addNormalPortion(50, "In Game Options")
                let layerManager: AllBinaryGameLayerManager! = self.createGameLayerManager()
                let inGameOptionsFormFactory: InGameOptionsFormFactory! = InGameOptionsFormFactory.getInstance()
                inGameOptionsFormFactory.`init`(self, InGameFeatures(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
                let inGameOptionsForm: CommandForm! = inGameOptionsFormFactory.get()
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface)
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm)
            } else if (command === InGameOptionsForm.DEFAULT) {
                let inGameOptionsForm: InGameOptionsForm! = (InGameOptionsFormFactory.getInstance().get() as! InGameOptionsForm)
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm)
            } else if (command === gameCommandsFactory.DISPLAY_OPTIONS) {
                AllBinaryMediaManager.setMuted(true)
                self.stopAll()
                let mainFeatureFactory: MainFeatureFactory! = MainFeatureFactory.getInstance()
                self.isFullScreen = self.features.isFeature(mainFeatureFactory.FULL_SCREEN)
                ResizableListenerHandler.getInstance().fireEvent(true)
                self.setResized(false)
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getGameOptionsForm())
            } else if (command === gameCommandsFactory.CLOSE_OPTIONS) {
                ResizableListenerHandler.getInstance().fireEvent(false)
                self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                let stringBuffer: StringMaker! = StringMaker()
                stringBuffer.append("Close isFullScreen/change: ")
                stringBuffer.appendboolean(self.isFullScreen)
                stringBuffer.appendboolean(self.fullScreenUtil.isScreenChange(self.isFullScreen))
                stringBuffer.append(" isResized: ")
                stringBuffer.appendboolean(self.isResized())
                PreLogUtil.put(stringBuffer.toString(), self, self.COMMAND_ACTION)
                if (self.isResized() || self.fullScreenUtil.isScreenChange(self.isFullScreen)) {
                    self.updateFullScreen()
                }
                AllBinaryMediaManager.setMuted(false)
            } else if (command === gameCommandsFactory.DISPLAY_LOAD_FORM) {
                self.pauseAppBackground(false)
                let keyValuePersistance: KeyValuePersistance! = GamePersistanceSingleton.getInstance()
                keyValuePersistance.clear()
                keyValuePersistance.loadAll(self.abeClientInformation)
                if (self.getLoadGameForm() === CommandForm.getNullCommandForm()) {
                    let layerManager: AllBinaryGameLayerManager! = self.createGameLayerManager()
                    self.setLoadGameForm(LoadGameForm(self, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()))
                } else {
                    self.getLoadGameForm().update()
                }
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getLoadGameForm())
            } else if (command === gameCommandsFactory.LOAD_FILE) {
                let loadGameForm: LoadGameForm! = (self.getLoadGameForm() as! LoadGameForm)
                let index: Int32 = loadGameForm.getSelectedId()
                if (index != -1) {
                    let keyValuePersistance: KeyValuePersistance! = GamePersistanceSingleton.getInstance()
                    self.setStartStateHashtable(keyValuePersistance.get(index))
                    let menuListener: MenuListener! = self.getLoadGameForm()
                    menuListener.close()
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), self, self.COMMAND_ACTION)
                    self.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas.NULL_CANVAS)
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), self, self.COMMAND_ACTION)
                }
            } else if (command === gameCommandsFactory.DELETE_FILE) {
                let loadGameForm: LoadGameForm! = (self.getLoadGameForm() as! LoadGameForm)
                let index: Int32 = loadGameForm.getSelectedText()
                if (index != -1) {
                    let keyValuePersistance: KeyValuePersistance! = GamePersistanceSingleton.getInstance()
                    keyValuePersistance.delete(self.abeClientInformation, index)
                    keyValuePersistance.clear()
                    keyValuePersistance.loadAllSize(self.abeClientInformation, 1)
                    self.getLoadGameForm().update()
                }
            } else if (command === gameCommandsFactory.SAVE) {
                let keyValuePersistance: KeyValuePersistance! = GamePersistanceSingleton.getInstance()
                self.pauseAppBackground(false)
                keyValuePersistance.save(self.abeClientInformation, self.getCurrentStateHashtable())
                self.unPauseAppBackground(false)
            } else if (command === HighScoreUtil.SUBMIT_TEXTBOX_COMMAND) {
                self.logUtil.putF("Submitted Score", self, self.COMMAND_ACTION)
                if ((displayable is HighScoreTextBox)) {
                    let highScoreTextBox: HighScoreTextBox! = (displayable as! HighScoreTextBox)
                    highScoreTextBox.submitted = true
                }
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true)
                self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            } else if (command === gameCommandsFactory.DISPLAY_ABOUT) {
                self.aboutCommandProcessor.process(self, gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getAboutCanvas())
            } else if (command === gameCommandsFactory.OPEN_WEB_URL) {
                self.webCommandProcessor.process(self, gameCommandsFactory.OPEN_WEB_URL, NullCanvas.NULL_CANVAS)
            } else if (command === gameCommandsFactory.TOGGLE_KEYBOARD) {
                let virtualKeyboardEventHandler: VirtualKeyboardEventHandler! = VirtualKeyboardEventHandler.getInstance()
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
            } else if (self.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0) {
                let mainFeatureFactory: MainFeatureFactory! = MainFeatureFactory.getInstance()
                let isFullScreen: Bool = self.features.isFeature(mainFeatureFactory.FULL_SCREEN)
                if (isFullScreen) {
                    self.features.removeDefault(mainFeatureFactory.FULL_SCREEN)
                } else {
                    self.features.addDefault(mainFeatureFactory.FULL_SCREEN)
                }
                self.updateFullScreen()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func updateFullScreen() {
        let mainFeatureFactory: MainFeatureFactory! = MainFeatureFactory.getInstance()
        let isFullScreen: Bool = self.features.isFeature(mainFeatureFactory.FULL_SCREEN)
        let displayable: Displayable! = self.getDisplay().getCurrent()
        if ((displayable is Canvas)) {
            let canvas: Canvas! = (displayable as! Canvas)
            canvas.setFullScreenMode(isFullScreen)
        }
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    @discardableResult open func getInputMappingInstructionsCanvas() -> MyCanvas! {
        return GameInputMappingInstructionsCanvas(self, self.createGameLayerManager())
    }
    

    @discardableResult open func getInputMappingCanvas() -> MyCanvas! {
        return GameInputMappingCanvas(self.abeClientInformation, self, self.createGameLayerManager(), self.getHelpPaintable())
    }
    

    @discardableResult open func getAboutCanvas() -> MyCanvas! {
        return BasicPaintablesCanvas(self, CanvasStrings.getInstance().ABOUT, self.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray)
    }
    

    @discardableResult open func getHelpPaintable() -> HelpPaintable! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func createHighScoresCanvas() -> HighScoresCanvas! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func startGameCanvasRunnableInterface() {
        let threadFactoryUtil: ThreadFactoryUtil! = ThreadFactoryUtil.getInstance()
        self.thread = threadFactoryUtil.getInstanceGameCanvasRunnable(self.allbinaryGameCanvasRunnableInterface)
        self.logUtil.putF(StringMaker().append("Thread Priority: ").appendint(self.thread.getPriority()).toString(), self, "startGameCanvasRunnableInterface")
        self.allbinaryGameCanvasRunnableInterface.setThread(self.thread)
        threadFactoryUtil.start(self.thread)
    }
    

    open func stopGameCanvasRunnableInterface() {
        self.logUtil.putF(self.commonStrings.START, self, self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        GameNotificationEventHandler.getInstance().removeAllListeners()
        ColorChangeEventHandler.getInstance().removeAllListeners()
        GameEventHandlerUtil.removeAllListeners()
        let gameCanvasRunnableInterface: GameCanvasRunnableInterface! = self.allbinaryGameCanvasRunnableInterface
        if (gameCanvasRunnableInterface !== NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            self.logUtil.putF(StringMaker().append("Set Running False: ").append(jstr(gameCanvasRunnableInterface)).toString(), self, self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            gameCanvasRunnableInterface.setRunning(false)
        } else {
            self.logUtil.putF("StopGame - Could Not Stop", self, self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        }
        ThreadUtil.getInstance().join(self.thread)
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        if (self.features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable")
        } else {
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable")
        }
        self.logUtil.putF(self.commonStrings.END, self, self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
    }
    

    @discardableResult open func getGameCanvasRunnableInterface() -> GameCanvasRunnableInterface! {
        return self.allbinaryGameCanvasRunnableInterface
    }
    

    open func setGameCanvasRunnableInterface(_ gameCanvasRunnableInterface: GameCanvasRunnableInterface!) {
        self.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface
    }
    

    @discardableResult open func createGameLayerManager() -> AllBinaryGameLayerManager! {
        let gameInfo: GameInfo! = GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1)
        return AllBinaryGameLayerManager(self.basicColorFactory.BLACK, self.basicColorFactory.WHITE, gameInfo)
    }
    

    @discardableResult open func getGameOptionsForm() -> CommandForm! {
        let layerManager: AllBinaryGameLayerManager! = self.createGameLayerManager()
        return GameOptionsFormFactory.getInstance().`init`(self, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
    }
    

    open func save() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.SAVE)
        let hashtable: ABHashtable! = self.getCurrentStateHashtable()
        GamePersistanceSingleton.getInstance().save(self.abeClientInformation, hashtable)
    }
    

    @discardableResult open override func getCurrentStateHashtable() -> ABHashtable! {
        self.logUtil.putF(self.commonStrings.START, self, "getCurrentStateHashtable")
        let hashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
        if (self.allbinaryGameCanvasRunnableInterface !== NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            let currentHashtable: ABHashtable! = self.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable()
            let enumeration: Enumeration! = currentHashtable.keys()
            var key: JObject! = nil
            while (self.enumerationUtil.hasMoreElements(enumeration)) {
                key = self.enumerationUtil.nextElement(enumeration)
                hashtable.put(key, currentHashtable.get(key))
            }
        }
        return hashtable
    }
    

    open func setLoadGameForm(_ loadGameForm: LoadGameForm!) {
        self.loadGameForm = loadGameForm
    }
    

    @discardableResult open func getLoadGameForm() -> CommandForm! {
        return self.loadGameForm
    }
    

    open func setResized(_ resized: Bool) {
        self.resized = resized
    }
    

    @discardableResult open func isResized() -> Bool {
        return self.resized
    }
    

    @discardableResult open func isDemoLoading() -> Bool {
        if (self.startedBefore) {
            return false
        }
        let displayable: Displayable! = self.getDisplay().getCurrent()
        if ((displayable is DemoCanvas)) {
            let demoCanvas: DemoCanvas! = (displayable as! DemoCanvas)
            if (demoCanvas.isDemoLoading()) {
                return true
            }
        }
        return false
    }
}

