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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Item
// import org.allbinary.J2MEUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.IndexedAnimationBehavior
// import org.allbinary.animation.special.SpecialAnimation
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.BaseGameStatistics
// import org.allbinary.canvas.CustomGameMenuUtil
// import org.allbinary.canvas.FullScreenUtil
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.GameAdState
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.init.GameInitializationUtil
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.event.GameKeyEventHandler
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.game.midlet.DemoGameMidlet
// import org.allbinary.game.score.HighScoreCommands
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresHelper
// import org.allbinary.game.score.HighScoresPaintable
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.ResizableListenerHandler
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.graphics.form.FormType
// import org.allbinary.graphics.form.FormTypeFactory
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.opengles.CurrentDisplayableFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.graphics.opengles.OpenGLThreadUtil
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.graphics.paint.StatePaintable
// import org.allbinary.graphics.paint.StatePaintableFactory
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory
// import org.allbinary.logic.system.security.licensing.LockableFeature
// import org.allbinary.logic.system.security.licensing.LockableFeatureFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.media.audio.AllBinaryMediaManager
// import org.allbinary.media.audio.EarlySoundsFactory
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class StartCanvas: RunnableCanvas, GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener {
    fileprivate static let id: Int32 = 0
    fileprivate static let BOT_GAME_STATS: String! = "Bot Game Statistics: "
    public var basicColorFactory: BasicColorFactory! = nil
    public var features: Features! = nil
    public var openGLFeatureFactory: OpenGLFeatureFactory! = nil
    public var myCommandsFactory: MyCommandsFactory! = nil
    public var gameAdStateFactory: GameAdStateFactory! = nil
    public var gameStateFactory: GameStateFactory! = nil
    public var gameInputStrings: GameInputStrings! = nil
    public var formUtil: FormUtil! = nil
    fileprivate var basicGameDemoPaintable: StatePaintable! = nil
    fileprivate var specialAnimationInterface: SpecialAnimation! = nil
    public var paintedSpecialAnimationInterface: Animation! = nil
    fileprivate var fullScreenUtil: FullScreenUtil! = nil
    fileprivate var highScoresHelper: HighScoresHelper! = nil
    fileprivate var realHighScoresPaintable: HighScoresPaintable! = nil
    fileprivate var highScoresPaintable: Paintable! = nil
    fileprivate var state: Int32 = 0
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var highScoresFactoryInterface: HighScoresFactoryInterface! = nil
    fileprivate var menuInputProcessor: BasicMenuInputProcessor! = nil
    fileprivate var menuForm: ScrollSelectionForm! = nil
    fileprivate var gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory! = nil
    fileprivate var initialized: Bool = false
    fileprivate var defaultPaintableInterface: Paintable! = nil
    fileprivate var paintableInterface: PaintableInterface! = nil
    fileprivate var overlayPaintable: InitUpdatePaintable! = nil
    fileprivate var tempWait: Int32 = 0
    fileprivate var inputToGameKeyMapping: InputToGameKeyMapping! = nil
    public var gameRunnable: GameRunnable! = nil
    fileprivate var progressPaintable: PaintableInterface! = nil
    fileprivate var isSingleKeyRepeatableProcessing: Bool = false
    fileprivate var NONE: GameKey! = nil
    fileprivate var gameKeyEventFactory: GameKeyEventFactory! = nil
    fileprivate var SET_STATE: String! = nil
    fileprivate var baseGameStatistics: BaseGameStatistics! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicColorFactory = BasicColorFactory.getInstance()
    self.features = Features.getInstance()
    self.openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
    self.myCommandsFactory = MyCommandsFactory.getInstance()
    self.gameAdStateFactory = GameAdStateFactory.getInstance()
    self.gameStateFactory = GameStateFactory.getInstance()
    self.gameInputStrings = GameInputStrings.getInstance()
    self.formUtil = FormUtil.getInstance()
    self.basicGameDemoPaintable = StatePaintableFactory.getInstance()
    self.specialAnimationInterface = SpecialAnimation.getInstance()
    self.paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
    self.fullScreenUtil = FullScreenUtil.getInstance()
    self.highScoresHelper = HighScoresHelper()
    self.realHighScoresPaintable = HighScoresPaintable()
    self.highScoresPaintable = NullPaintable.getInstance()
    self.state = 0
    self.timeDelayHelper = TimeDelayHelper(6000)
    
    self.menuInputProcessor = NoMenuInputProcessor.getInstance()
    self.menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    
    self.initialized = false
    self.defaultPaintableInterface = NullPaintable.getInstance()
    self.paintableInterface = NullPaintable.getInstance()
    
    self.tempWait = NullWaitGameRunnable.getInstance().WAIT
    self.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    self.gameRunnable = NullWaitGameRunnable.getInstance()
    self.progressPaintable = ProgressCanvasFactory.getLazyInstance()
    self.isSingleKeyRepeatableProcessing = self.features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
    self.NONE = GameKeyFactory.getInstance().NONE
    self.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    self.SET_STATE = "setState"
    self.baseGameStatistics = GameStatisticsFactory.getInstance()
    }
    

    public init(_ abeClientInformation: AbeClientInformationInterface!, _ commandListener: CommandListener!, _ highScoresFactoryInterface: HighScoresFactoryInterface!, _ paintable: Paintable!, _ overlayPaintable: InitUpdatePaintable!, _ gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory!, _ isContinue: Bool) {
        super.init(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        self.initFields()
        self.setWait(NullWaitGameRunnable.getInstance().WAIT)
        self.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, self, gameInitializationInterfaceFactoryInterface)
        ResizableListenerHandler.getInstance().fireEvent(false)
        self.overlayPaintable = overlayPaintable
        self.highScoresFactoryInterface = highScoresFactoryInterface
        self.setDefaultPaintableInterface(paintable)
        self.setPaintableInterface(self.getDefaultPaintableInterface())
        if (isContinue) {
            self.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND)
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND)) {
            self.mediaInit()
        }
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onDisplayChangeEvent(_ displayChangeEvent: DisplayChangeEvent!) {
        do {
            let scrollSelectionForm: ScrollSelectionForm! = self.getMenuForm()
            if (scrollSelectionForm != nil) {
                let formType: FormType! = FormTypeFactory.getInstance().getFormType()
                let rectangle: Rectangle! = self.formUtil.createFormRectangle()
                scrollSelectionForm.`init`(rectangle, formType)
            }
            self.overlayPaintable.`init`()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getCustomCommands() -> JArray<JObject?>! {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        if (J2MEUtil.isHTML()) {
            let commandArray: JArray<JObject?>! = JArray<JObject?>([gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT])
            return commandArray
        } else {
            let commandList: BasicArrayList! = BasicArrayListD()
            commandList.add(gameCommandsFactory.START_COMMAND)
            let inApplicationPurchaseFactory: InApplicationPurchaseFactory! = InApplicationPurchaseFactory.getInstance()
            if (inApplicationPurchaseFactory.isEnabled()) {
                let list: BasicArrayList! = LockableFeatureFactory.getInstance().getList()
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased((list.get(0) as! LockableFeature))) {
                    commandList.add(gameCommandsFactory.BUY_COMMAND)
                }
            }
            commandList.add(HighScoreCommands.getInstance().DISPLAY)
            do {
                let isOverScan: Bool = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
                if (SWTUtil.isSWT) {
                    commandList.add(GameInputMappingCanvas.DISPLAY)
                } else if (!isOverScan) {
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS)
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM)
                    commandList.add(GameInputMappingCanvas.DISPLAY)
                }
            } /* catch (Exception e): a thrown Java exception stops the program */
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT)
            let commandArray: JArray<JObject?>! = commandList.toArray()
            return commandArray
        }
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        let commandArray: JArray<JObject?>! = self.getCustomCommands()
        let size: Int32 = commandArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.addCommand((commandArray[index] as! Command))
            }
        }
        CustomGameMenuUtil.add(self)
        self.setCommandListener(cmdListener)
    }
    

    open func initPostPaint() {
    }
    

    open func mediaInit() {
        AllBinaryMediaManager.`init`(EarlySoundsFactory.getInstance())
    }
    

    open func itemStateChanged(_ item: Item!) {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
    }
    

    open func initMenu() {
        self.close()
        self.`open`()
    }
    

    open func `open`() {
        BasicMotionGesturesHandler.getInstance().addListenerInterface(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(self.getMenuInputProcessor())
    }
    

    open func close() {
        BasicMotionGesturesHandler.getInstance().removeListener(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(self.getMenuInputProcessor())
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return StartCanvas.id
    }
    

    open override func keyPressed(_ keyCode: Int32) {
        self.keyPressedByDevice(keyCode, 0)
    }
    

    open override func keyReleased(_ keyCode: Int32) {
        self.keyReleasedByDevice(keyCode, 0)
    }
    

    open override func keyRepeated(_ keyCode: Int32) {
        self.keyRepeatedByDevice(keyCode, 0)
    }
    

    open override func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        self.addGameKeyEvent(keyCode, false)
    }
    

    open override func keyReleasedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        self.removeGameKeyEvent(keyCode, false)
    }
    

    open override func keyRepeatedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        if (self.isSingleKeyRepeatableProcessing) {
            self.addGameKeyEvent(keyCode, true)
        }
    }
    

    fileprivate func addGameKeyEvent(_ keyCode: Int32, _ repeated: Bool) {
        do {
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if (gameKey !== self.NONE) {
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(self, gameKey)
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            } else {
                self.logUtil.putF(StringMaker().append(self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), self, self.gameInputStrings.ADD_KEY_EVENT)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func removeGameKeyEvent(_ keyCode: Int32, _ repeated: Bool) {
        do {
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if (gameKey !== self.NONE) {
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(self, gameKey)
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            } else {
                self.logUtil.putF(StringMaker().append(self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), self, self.gameInputStrings.REMOVE_KEY_EVENT)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func pause() {
        self.close()
        self.setPaused(true)
    }
    

    open override func unPause() {
        self.`open`()
        self.setPaused(false)
    }
    

    @discardableResult open override func isPausable() -> Bool {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() === NullWaitGameRunnable.getInstance()) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func isGameOver() -> Bool {
        self.logUtil.putF(StringMaker().append(self.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), self, "isGameOver")
        return false
    }
    

    open func setLoadStateHashtable(_ hashtable: ABHashtable!) {
        self.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "setLoadStateHashtable")
    }
    

    @discardableResult open func getLoadStateHashtable() -> ABHashtable! {
        self.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "getLoadStateHashtable")
        return self.stdUtil.NULL_TABLE
    }
    

    @discardableResult open func getCurrentStateHashtable() -> ABHashtable! {
        self.logUtil.putF("Trying to save the AI lol", self, "getCurrentStateHashtable")
        return self.stdUtil.NULL_TABLE
    }
    

    open func setHighScoreSubmitted(_ isNotUsed: Bool) {
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.paintableInterface.paint(graphics)
        self.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0)
        self.highScoresPaintable.paint(graphics)
        self.getBasicGameDemoPaintable().paint(graphics)
        self.overlayPaintable.paint(graphics)
        self.progressPaintable.paint(graphics)
    }
    

    open func paintThreed(_ graphics: Graphics!) {
        self.paintableInterface.paintThreed(graphics)
        self.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
    

    open func processGameOver() {
        self.logUtil.putF("Not Implemented since not a game", self, "setGameOver")
    }
    

    open func demoStateChange() {
        var newState: Int32 = self.state &+ 1
        if (newState > 2) {
            newState = 0
        } else if (newState == 2) {
            if (!self.highScoresHelper.isAnyHighScores()) {
                newState = 0
            } else {
                let highScores: HighScores! = self.highScoresHelper.getNextHighScores()
                if (highScores === NullHighScoresSingletonFactory.getInstance()) {
                    newState = 0
                } else {
                    self.getRealHighScoresPaintable().setHighScores(highScores)
                }
            }
        }
        self.setState(newState)
        self.updateDemoState()
    }
    

    open func updateDemoState() {
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(self.state).toString(), self, self.SET_STATE)
        self.getBasicGameDemoPaintable().setState(self.state)
        if (self.state == 0) {
            self.highScoresPaintable = NullPaintable.getInstance()
            self.paintedSpecialAnimationInterface = self.getSpecialAnimationInterface()
            self.getSpecialAnimationInterface().reset()
        } else if (self.state == 1) {
            self.paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        } else if (self.state == 2) {
            self.highScoresPaintable = self.getRealHighScoresPaintable()
        }
        let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
        gameAdState.processPageAdState()
    }
    

    @discardableResult open func getNextRandom() -> Int32 {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func createGameLayerManager(_ randomValue: Int32) -> AllBinaryGameLayerManager! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func createRunnable(_ randomLevel: Int32) -> GameCanvasRunnableInterface! {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func createCanvas() {
        self.highScoresPaintable = NullPaintable.getInstance()
        _ = self.getNextRandom()
    }
    

    open func start() {
    }
    

    open func preDemoProcess() {
        self.overlayPaintable.update()
    }
    

    open override func process() {
        self.getMenuInputProcessor().processInputList()
        self.preDemoProcess()
        if (self.state == 0) {
            let indexedAnimationBehavior: IndexedAnimationBehavior! = (self.getSpecialAnimationInterface().getAnimationBehavior() as! IndexedAnimationBehavior)
            if (indexedAnimationBehavior.loopIndex < 1) {
                self.timeDelayHelper.setStartTimeTNT()
            }
            _ = (self.getCustomCommandListener() as! DemoGameMidlet)
        }
    }
    

    public func startDemoGame() {
    }
    

    open func processGame() {
        self.gameRunnable.run()
        self.specialAnimationInterface.nextFrame()
        self.process()
    }
    

    open override func run() {
        self.logUtil.putF(self.commonStrings.START_RUNNABLE, self, self.commonStrings.RUN)
        do {
            let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if (self.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end()
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            }
            self.fullScreenUtil.initOnRun(self, self.getCustomCommandListener())
            self.initMenu()
            self.initPostPaint()
            self.updateDemoState()
            if (self.features.isDefault(self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                OpenGLThreadUtil.getInstance().onResume()
            }
            if (self.features.isDefault(self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            } else {
                while (self.isRunning()) {
                    self.loopTimeHelper.setStartTimeTNT()
                    self.processGame()
                    self.processLoopSleep()
                }
                self.end()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
    }
    

    open override func setRunning(_ running: Bool) {
        super.setRunning(running)
        do {
            if ((self.features.isDefault(self.openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML()) && !running) {
                let currentDisplayableFactory: CurrentDisplayableFactory! = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.clearRunnable()
                self.end()
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func end() {
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        self.baseGameStatistics.add(StringMaker().append(StartCanvas.BOT_GAME_STATS).append(self.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        self.baseGameStatistics.`init`()
        if (self.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start()
        }
        self.logUtil.putF("Demo End", self, self.commonStrings.RUN)
        self.close()
        DisplayChangeEventHandler.getInstance().removeListener(self)
    }
    

    open func setGameState(_ gameState: GameState!) {
    }
    

    @discardableResult open func getGameState() -> GameState! {
        return self.gameStateFactory.PLAYING_GAME_STATE
    }
    

    @discardableResult open func getState() -> Int32 {
        return self.state
    }
    

    open func setState(_ state: Int32) {
        self.state = state
    }
    

    @discardableResult open func isHighScoreSubmitted() -> Bool {
        self.logUtil.putF("Wow the AI got a high score!", self, "isHighScoreSubmitted")
        return false
    }
    

    @discardableResult open func getRealHighScoresPaintable() -> HighScoresPaintable! {
        return self.realHighScoresPaintable
    }
    

    open func setSpecialAnimationInterface(_ specialAnimationInterface: SpecialAnimation!) {
        specialAnimationInterface.setFrame(0)
        self.specialAnimationInterface = specialAnimationInterface
    }
    

    @discardableResult open func getSpecialAnimationInterface() -> SpecialAnimation! {
        return self.specialAnimationInterface
    }
    

    open func setPaintableInterface(_ paintableInterface: PaintableInterface!) {
        self.paintableInterface = paintableInterface
    }
    

    @discardableResult open func getPaintableInterface() -> PaintableInterface! {
        return self.paintableInterface
    }
    

    open func setDefaultPaintableInterface(_ defaultPaintableInterface: Paintable!) {
        self.defaultPaintableInterface = defaultPaintableInterface
    }
    

    @discardableResult open func getDefaultPaintableInterface() -> Paintable! {
        return self.defaultPaintableInterface
    }
    

    @discardableResult open func getHighScoresFactoryInterface() -> HighScoresFactoryInterface! {
        return self.highScoresFactoryInterface
    }
    

    open func setMenuInputProcessor(_ menuInputProcessor: BasicMenuInputProcessor!) {
        self.menuInputProcessor = menuInputProcessor
    }
    

    @discardableResult open func getMenuInputProcessor() -> BasicMenuInputProcessor! {
        return self.menuInputProcessor
    }
    

    @discardableResult open func getMenuForm() -> ScrollSelectionForm! {
        return self.menuForm
    }
    

    open func setMenuForm(_ menuForm: ScrollSelectionForm!) {
        self.menuForm = menuForm
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return self.initialized
    }
    

    @discardableResult open func getOverlayPaintable() -> Paintable! {
        return self.overlayPaintable
    }
    

    open func setBasicGameDemoPaintable(_ basicGameDemoPaintable: StatePaintable!) {
        self.basicGameDemoPaintable = basicGameDemoPaintable
    }
    

    @discardableResult open func getBasicGameDemoPaintable() -> StatePaintable! {
        return self.basicGameDemoPaintable
    }
    

    open func setTempWait(_ tempWait: Int32) {
        self.tempWait = tempWait
    }
    

    @discardableResult open func getTempWait() -> Int32 {
        return self.tempWait
    }
    

    @discardableResult open override func isSingleThread() -> Bool {
        return OpenGLFeatureUtil.getInstance().isAnyThreed() || SWTUtil.isSWT
    }
    

    @discardableResult open func isRunningInAnotherThread() -> Bool {
        let features: Features! = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory! = OpenGLFeatureFactory.getInstance()
        if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
            return true
        } else {
            return self.isRunning()
        }
    }
    

    @discardableResult open func getGameInitializationInterfaceFactoryInterface() -> BasicBuildGameInitializerFactory! {
        return self.gameInitializationInterfaceFactoryInterface
    }
    

    @discardableResult open override func getTitle() -> String! {
        return super.getTitle()
    }
    

    @discardableResult open override func isPaused() -> Bool {
        return super.isPaused()
    }
    

    @discardableResult open override func getType() -> Int32 {
        return super.getType()
    }
}

