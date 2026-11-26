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
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.BaseGameStatistics
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.canvas.Processor
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.debug.DebugFactory
// import org.allbinary.debug.NoDebug
// import org.allbinary.game.GameAdState
// import org.allbinary.game.GameInfo
// import org.allbinary.game.GameStrings
// import org.allbinary.game.GameTypeFactory
// import org.allbinary.game.Intermission
// import org.allbinary.game.IntermissionCompositeInterface
// import org.allbinary.game.IntermissionEnableListenerInterface
// import org.allbinary.game.IntermissionInterface
// import org.allbinary.game.PlayerTypesFactory
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.InGameFeatures
// import org.allbinary.game.configuration.InGameOptionsForm
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.event.GameInitializedEvent
// import org.allbinary.game.configuration.event.GameInitializedEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.game.configuration.feature.GameFeatureUtil
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.game.configuration.feature.TouchFeatureFactory
// import org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.init.GameInitializationUtil
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.InputProcessor
// import org.allbinary.game.input.NoPlayerGameInput
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.event.GameKeyEventHandler
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.game.resource.ResourceLoadingLevel
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.game.score.HighScore
// import org.allbinary.game.score.HighScoresHelperBaseInterface
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresPaintable
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.game.score.displayable.HighScoreTextBox
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.GraphicsStrings
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.ScreenCapture
// import org.allbinary.graphics.ScreenCaptureFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory
// import org.allbinary.graphics.form.FormPaintable
// import org.allbinary.graphics.form.FormType
// import org.allbinary.graphics.form.FormTypeFactory
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory
// import org.allbinary.graphics.form.item.CommandTextItemArrayFactory
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.graphics.opengles.CurrentDisplayableFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.graphics.opengles.OpenGLThreadUtil
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.graphics.paint.NullInitUpdatePaintable
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.image.opengles.OpenGLImageSpecificFactory
// import org.allbinary.input.gyro.SensorGameUpdateProcessor
// import org.allbinary.input.gyro.SingleSensorGameUpdateProcessor
// import org.allbinary.input.motion.button.BaseTouchInput
// import org.allbinary.input.motion.button.NoButtonsTouchInputFactory
// import org.allbinary.input.motion.button.TouchButtonFactory
// import org.allbinary.input.motion.button.TouchButtonsPaintableFactory
// import org.allbinary.input.motion.button.TouchScreenFactory
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.media.audio.AllBinaryMediaManager
// import org.allbinary.media.audio.PlayerQueue
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory
// import org.allbinary.media.audio.SecondaryPlayerQueueFactory
// import org.allbinary.media.audio.SelectSound
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.SecondaryThreadPool
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class AllBinaryGameCanvas: RunnableCanvas, AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, IntermissionCompositeInterface, IntermissionEnableListenerInterface, PopupMenuInterface, DisplayChangeEventListener, UpdateMyFontInterface {
    fileprivate static let id: Int32 = 0
    public static let TYPE: Int32 = 2
    public var basicColorFactory: BasicColorFactory! = nil
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    public var touchFeatureFactory: TouchFeatureFactory! = nil
    public var openGLFeatureFactory: OpenGLFeatureFactory! = nil
    public var touchButtonFactory: TouchButtonFactory! = nil
    public var gameAdStateFactory: GameAdStateFactory! = nil
    public var gameStrings: GameStrings! = nil
    public var gameInputStrings: GameInputStrings! = nil
    public var gameStateFactory: GameStateFactory! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil
    fileprivate var gameTickDisplayInfoSingleton: GameTickDisplayInfoSingleton! = nil
    public var gameRunnable: GameCanvasRunnable! = nil
    public var gamePauseRunnable: GameCanvasPauseRunnable! = nil
    public var formUtil: FormUtil! = nil
    public var myFormUtil: MyFormUtil! = nil
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    public var gameSpecificPaintable: Paintable! = nil
    fileprivate var sensorGameUpdateProcessor: SensorGameUpdateProcessor! = nil
    public var endGameInfo: EndGameInfo! = nil
    fileprivate var startIntermissionInterface: IntermissionInterface! = nil
    fileprivate var endLevelIntermissionInterface: IntermissionInterface! = nil
    public var gameLayerManager: AllBinaryGameLayerManager! = nil
    fileprivate var gameState: GameState! = nil
    fileprivate var gameOver: Bool = false
    fileprivate var initialized: Bool = false
    fileprivate var gameStateTimeHelper: TimeDelayHelper! = nil
    public var highScoresHelper: HighScoresHelperBaseInterface! = nil
    fileprivate var highScoreSubmitted: Bool = false
    fileprivate var realHighScoresPaintable: HighScoresPaintable! = nil
    fileprivate var highScoresPaintable: Paintable! = nil
    fileprivate var localPlayerGameInputList: BasicArrayList! = nil
    fileprivate var isCheating: Bool = false
    fileprivate var hashtable: ABHashtable! = nil
    fileprivate var isSingleKeyRepeatableProcessing: Bool = false
    fileprivate var gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory! = nil
    fileprivate var touchButtonsPaintable: Paintable! = nil
    public var touchPaintable: Paintable! = nil
    fileprivate var cheatProcessor: PlayerGameInput! = nil
    fileprivate var gameInputProcessor: Processor! = nil
    fileprivate var endGameProcessor: Processor! = nil
    fileprivate var realEndGameProcessor: Processor! = nil
    fileprivate var startIntermissionProcessor: Processor! = nil
    fileprivate var realStartIntermissionProcessor: Processor! = nil
    fileprivate var endGamePaintable: Paintable! = nil
    fileprivate var endGameStatePaintable: Paintable! = nil
    public var nonBotPaintable: Paintable! = nil
    fileprivate var intermissionPaintable: Paintable! = nil
    fileprivate var startIntermissionPaintable: InitUpdatePaintable! = nil
    fileprivate var mainStateProcessor: Processor! = nil
    fileprivate var processGameProcessor: Processor! = nil
    fileprivate var highScoresFactoryInterface: HighScoresFactoryInterface! = nil
    fileprivate var startLevel: Int32 = 0
    fileprivate var mainMenuInputProcessor: BasicMenuInputProcessor! = nil
    fileprivate var popupMenuInputProcessor: BasicMenuInputProcessor! = nil
    fileprivate var menuInputProcessor: BasicMenuInputProcessor! = nil
    fileprivate var menuForm: ScrollSelectionForm! = nil
    fileprivate var formPaintable: Paintable! = nil
    fileprivate var openMenuPaintable: Paintable! = nil
    fileprivate var menuPaintable: Paintable! = nil
    fileprivate var currentTouchInputFactory: BaseTouchInput! = nil
    public var colorFillPaintable: ColorFillBasePaintable! = nil
    fileprivate var baseGameStatistics: BaseGameStatistics! = nil
    fileprivate var primaryPlayerQueue: PlayerQueue! = nil
    fileprivate var secondaryPlayerQueue: PlayerQueue! = nil
    public var BUILD_GAME: String! = nil
    public var gameTypeFactory: GameTypeFactory! = nil
    public var screenCapture: ScreenCapture! = nil
    fileprivate var basicMotionGesturesHandler: BasicMotionGesturesHandler! = nil
    fileprivate var gameKeyEventHandler: GameKeyEventHandler! = nil
    fileprivate var gameBehavior: DemoGameBehavior! = nil
    fileprivate var menuBehavior: BaseMenuBehavior! = nil
    fileprivate var progressPaintable: PaintableInterface! = nil
    public var fontHeightP: Int32 = 0
    fileprivate var gameCanvasStartListener: DemoPaintableInterface! = nil
    fileprivate var rawGameInputProcessor: InputProcessor! = nil
    fileprivate var rawInputProcessor: InputProcessor! = nil
    fileprivate var inputProcessor: InputProcessor! = nil
    fileprivate var YIELD_SLEEP: Int64 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.basicColorFactory = BasicColorFactory.getInstance()
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.touchFeatureFactory = TouchFeatureFactory.getInstance()
    self.openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
    self.touchButtonFactory = TouchButtonFactory.getInstance()
    self.gameAdStateFactory = GameAdStateFactory.getInstance()
    self.gameStrings = GameStrings.getInstance()
    self.gameInputStrings = GameInputStrings.getInstance()
    self.gameStateFactory = GameStateFactory.getInstance()
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    self.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    self.gameRunnable = GameCanvasRunnable(self)
    self.gamePauseRunnable = GameCanvasPauseRunnable(self)
    self.formUtil = FormUtil.getInstance()
    self.myFormUtil = MyFormUtil.getInstance()
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.gameSpecificPaintable = NullPaintable.getInstance()
    self.sensorGameUpdateProcessor = SingleSensorGameUpdateProcessor()
    self.endGameInfo = EndGameInfo()
    self.startIntermissionInterface = Intermission()
    self.endLevelIntermissionInterface = Intermission()
    self.gameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    self.gameState = self.gameStateFactory.NO_GAME_STATE
    self.gameOver = false
    self.initialized = false
    self.gameStateTimeHelper = TimeDelayHelper(0)
    
    self.highScoreSubmitted = false
    self.realHighScoresPaintable = HighScoresPaintable()
    self.highScoresPaintable = NullPaintable.getInstance()
    self.localPlayerGameInputList = BasicArrayListD()
    self.isCheating = false
    self.hashtable = self.stdUtil.NULL_TABLE
    self.isSingleKeyRepeatableProcessing = false
    self.gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
    self.touchButtonsPaintable = NullPaintable.getInstance()
    self.touchPaintable = NullPaintable.getInstance()
    self.cheatProcessor = NoPlayerGameInput.getInstance()
    self.gameInputProcessor = Processor.getInstance()
    self.endGameProcessor = Processor.getInstance()
    self.realEndGameProcessor = Processor.getInstance()
    self.startIntermissionProcessor = Processor.getInstance()
    self.realStartIntermissionProcessor = Processor.getInstance()
    self.endGamePaintable = NullPaintable.getInstance()
    self.endGameStatePaintable = NullPaintable.getInstance()
    self.nonBotPaintable = NullPaintable.getInstance()
    self.intermissionPaintable = NullPaintable.getInstance()
    self.startIntermissionPaintable = NullInitUpdatePaintable.getInstance()
    self.mainStateProcessor = Processor.getInstance()
    self.processGameProcessor = Processor.getInstance()
    
    self.startLevel = 0
    self.mainMenuInputProcessor = NoMenuInputProcessor.getInstance()
    self.popupMenuInputProcessor = NoMenuInputProcessor.getInstance()
    self.menuInputProcessor = NoMenuInputProcessor.getInstance()
    self.menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
    self.formPaintable = NullPaintable.getInstance()
    self.openMenuPaintable = NullPaintable.getInstance()
    self.menuPaintable = NullPaintable.getInstance()
    self.currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance()
    self.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(self.basicColorFactory.BLACK, true)
    self.baseGameStatistics = GameStatisticsFactory.getInstance()
    self.primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance()
    self.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
    self.BUILD_GAME = "buildGame"
    self.gameTypeFactory = GameTypeFactory.getInstance()
    self.screenCapture = ScreenCaptureFactory.getInstance()
    self.basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance()
    self.gameKeyEventHandler = GameKeyEventHandler.getInstance()
    self.gameBehavior = nil
    self.menuBehavior = nil
    self.progressPaintable = ProgressCanvasFactory.getLazyInstance()
    self.fontHeightP = 0
    self.gameCanvasStartListener = NullDemoPaintable.NULL_DEMO_PAINTABLE
    self.rawGameInputProcessor = GameCanvasInputProcessor(self)
    self.rawInputProcessor = FormInputProcessor(self)
    self.inputProcessor = self.getRawGameInputProcessor()
    self.YIELD_SLEEP = 100
    }
    

    public init(_ commandListener: CommandListener!, _ gameLayerManager: AllBinaryGameLayerManager!, _ highScoresFactoryInterface: HighScoresFactoryInterface!, _ gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory!, _ buffered: Bool) {
        super.init(commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true)
        self.initFields()
        self.highScoresHelper = highScoresFactoryInterface.createHighScoresHelper()
        self.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        self.`init`(gameLayerManager, buffered)
        self.highScoresFactoryInterface = highScoresFactoryInterface
        if (self.gameLayerManager.getGameInfo().getGameType() === self.gameTypeFactory.BOT || self.gameLayerManager.getGameInfo().getGameType() === self.gameTypeFactory.NONE) {
            self.gameBehavior = DemoGameBehavior.getInstance()
            self.menuBehavior = BaseMenuBehavior.getInstance()
        } else {
            self.gameBehavior = BaseGameBehavior.getInstance()
            self.menuBehavior = self.getInGameMenuBehavior()
        }
        self.initPopupMenu()
        self.initMenu()
        self.initSpecialPaint()
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        do {
            let font: Font! = graphics.getFont()
            self.logUtil.putF(StringMaker().append(self.commonStrings.START).append(self.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(self.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), self, self.canvasStrings.UPDATE_MEASUREMENT)
            self.fontHeightP = font.getHeight()
            self.myFormUtil.updateMeasurement(graphics)
            let popupMenuRectangle: Rectangle! = self.myFormUtil.getPopupMenuRectangle()
            let basicPopupMenuPaintable: BasicPopupMenuPaintable! = ((self.getOpenMenuPaintable() as! BasicPopupMenuPaintable))
            basicPopupMenuPaintable.`init`(popupMenuRectangle)
            if (self.getPopupMenuInputProcessor() !== NoMenuInputProcessor.getInstance()) {
                let popupMenuInputProcessor: PopupMenuInputProcessor! = ((self.getPopupMenuInputProcessor() as! PopupMenuInputProcessor))
                popupMenuInputProcessor.`init`(popupMenuRectangle)
            }
            self.myFontProcessor = MyFontProcessor.getInstance()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getInGameMenuBehavior() -> BaseMenuBehavior! {
        return InGameMenuBehavior.getInstance()
    }
    

    open override func setCurrentThread() {
        if (J2MEUtil.isHTML()) {
            super.setCurrentThreadFake()
        } else {
            super.setCurrentThread()
        }
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onDisplayChangeEvent(_ displayChangeEvent: DisplayChangeEvent!) {
        do {
            self.logUtil.putF(StringMaker().append(self.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), self, self.canvasStrings.UPDATE_MEASUREMENT)
            self.myFontProcessor = self.updateMyFontProcessor
            self.menuBehavior.onDisplayChangeEvent(self, displayChangeEvent)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func updateMenuFromEvent(_ displayChangeEvent: DisplayChangeEvent!) {
        let formType: FormType! = FormTypeFactory.getInstance().getFormType()
        let rectangle: Rectangle! = self.formUtil.createFormRectangle()
        self.menuForm.`init`(rectangle, formType)
        if (self.currentTouchInputFactory !== NoButtonsTouchInputFactory.getInstance()) {
            self.touchButtonFactory.toggle(self.isPaused(), self.currentTouchInputFactory.getList())
        }
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open override func processSleep() {
        super.processSleep()
        if (AllBinaryMediaManager.update()) {
            if (!self.primaryPlayerQueue.process()) {
                self.secondaryPlayerQueue.process()
            }
        }
        if (self.menuInputProcessor.processInputList() != -1) {
            self.runnableCanvasRefreshHelper.process()
        }
    }
    

    open func initPopupMenu() {
        if (self.popupMenuInputProcessor === NoMenuInputProcessor.getInstance()) {
            let features: Features! = Features.getInstance()
            let popupMenuRectangle: Rectangle! = self.myFormUtil.getPopupMenuRectangle()
            if (features.isFeature(self.touchFeatureFactory.TOUCH_ENABLED)) {
                self.setOpenMenuPaintable(BasicPopupMenuPaintable(popupMenuRectangle, self.gameLayerManager.getBackgroundBasicColor(), self.gameLayerManager.getForegroundBasicColor()))
                self.setPopupMenuInputProcessor(PopupMenuInputProcessor(BasicArrayListD(), -1, self, popupMenuRectangle))
            }
        } else {
        }
    }
    

    open func initMenu() {
        do {
            self.menuBehavior.initMenu(self)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func initMenu2() {
        self.closeMenu()
        let formType: FormType! = FormTypeFactory.getInstance().getFormType()
        let gameLimitedCommandTextItemArrayFactory: GameLimitedCommandTextItemArrayFactory! = GameLimitedCommandTextItemArrayFactory.getInstance()
        let commandTextItemArrayFactory: CommandTextItemArrayFactory! = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        let items: JArray<ABCustomItem?>! = commandTextItemArrayFactory.getInstance(self.getCommandStack(), self.gameLayerManager.getBackgroundBasicColor(), self.gameLayerManager.getForegroundBasicColor())
        let rectangle: Rectangle! = self.formUtil.createFormRectangle()
        self.setMenuForm(CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, self.gameLayerManager.getBackgroundBasicColor(), self.gameLayerManager.getForegroundBasicColor()))
        let scrollSelectionForm: ScrollSelectionForm! = self.getMenuForm()
        let features: Features! = Features.getInstance()
        if (features.isFeature(self.touchFeatureFactory.TOUCH_ENABLED)) {
            self.mainMenuInputProcessor = PopupCommandFormInputProcessor(BasicArrayListD(), -1, self, scrollSelectionForm, (self.getPopupMenuInputProcessor() as! PopupMenuInputProcessor))
        } else {
        }
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
        if (scrollSelectionForm !== ScrollSelectionFormNoneFactory.getInstance()) {
            self.setFormPaintable(FormPaintable(scrollSelectionForm))
        } else {
        }
        self.closeMenu()
    }
    

    open func updateMenu() {
        do {
            self.menuBehavior.updateMenu(self)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func updateMenu2() {
        let scrollSelectionForm: ScrollSelectionForm! = self.getMenuForm()
        scrollSelectionForm.deleteAll()
        let gameLimitedCommandTextItemArrayFactory: GameLimitedCommandTextItemArrayFactory! = GameLimitedCommandTextItemArrayFactory.getInstance()
        let commandTextItemArrayFactory: CommandTextItemArrayFactory! = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        let items: JArray<ABCustomItem?>! = commandTextItemArrayFactory.getInstance(self.getCommandStack(), self.gameLayerManager.getBackgroundBasicColor(), self.gameLayerManager.getForegroundBasicColor())
        let size: Int32 = items.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            scrollSelectionForm.append(items[index])
            }
        }
        let formType: FormType! = FormTypeFactory.getInstance().getFormType()
        let rectangle: Rectangle! = self.formUtil.createFormRectangle()
        scrollSelectionForm.`init`(rectangle, formType)
    }
    

    open override func pause() {
        self.gameBehavior.pause(self)
        self.closeMenu()
        super.pause()
        self.touchButtonFactory.toggle(self.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        self.tsUtil.gc()
    }
    

    open override func unPause() {
        self.logUtil.putF(self.commonStrings.START, self, self.gameStrings.UNPAUSE)
        self.closeMenu()
        self.tsUtil.gc()
        super.unPause()
        self.touchButtonFactory.toggle(self.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        self.gameBehavior.unPause(self)
    }
    

    @discardableResult open override func isPausable() -> Bool {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() === NullWaitGameRunnable.getInstance()) {
            return true
        } else {
            return false
        }
    }
    

    open func popupMenu() {
        self.menuBehavior.popupMenu(self)
    }
    

    open func popupMenu2() {
        self.primaryPlayerQueue.add(SelectSound.getInstance())
        self.setMenuPaintable(self.getFormPaintable())
        self.setMenuInputProcessor(self.mainMenuInputProcessor)
        self.basicMotionGesturesHandler.addListenerInterface(self.mainMenuInputProcessor)
        self.gameKeyEventHandler.addListener(self.mainMenuInputProcessor)
    }
    

    open func toggleMenu() {
        self.logUtil.putF(self.commonStrings.START, self, self.gameStrings.TOGGLE_MENU)
        if (self.getMenuPaintable() === self.getOpenMenuPaintable()) {
            self.pause()
            self.updateMenu()
            self.popupMenu()
        } else if (self.getMenuPaintable() === self.getFormPaintable()) {
            self.primaryPlayerQueue.add(SelectSound.getInstance())
            self.unPause()
        }
    }
    

    open func closeMenu() {
        self.menuBehavior.closeMenu(self)
    }
    

    open func closeMenu2() {
        self.setMenuPaintable(self.getOpenMenuPaintable())
        self.basicMotionGesturesHandler.removeListener(self.mainMenuInputProcessor)
        self.gameKeyEventHandler.removeListener(self.mainMenuInputProcessor)
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
    }
    

    open func `open`() {
        self.basicMotionGesturesHandler.addListenerInterface(self.menuInputProcessor)
        self.gameKeyEventHandler.addListener(self.menuInputProcessor)
    }
    

    open func close() {
        self.basicMotionGesturesHandler.removeListener(self.menuInputProcessor)
        self.gameKeyEventHandler.removeListener(self.menuInputProcessor)
        self.primaryPlayerQueue.clear()
        self.secondaryPlayerQueue.clear()
    }
    

    open func processorInit() {
        self.setMainStateProcessor(Processor.getInstance())
        self.setProcessGameProcessorInit()
    }
    

    open func setProcessGameProcessorInit() {
        self.setProcessGameProcessor(GameProcessor(self))
    }
    

    open func initSpecialPaint() {
        self.menuBehavior.initSpecialPaint(self)
    }
    

    fileprivate func `init`(_ gameLayerManager: AllBinaryGameLayerManager!, _ buffered: Bool) {
        self.gameStateTimeHelper.setStartTimeTNT()
        self.setHighScoreSubmitted(false)
        self.setLayerManager(gameLayerManager)
        if (!buffered) {
            let BUFF_MESSAGE: String! = "XXX Not Buffering Causes Concurrency Issues XXX"
            self.logUtil.putF(BUFF_MESSAGE, self, self.commonStrings.CONSTRUCTOR)
        } else {
            jThrow(JException("Exception", "Buffering is disabled"))
        }
        self.setGameInputProcessor(Processor.getInstance())
        let features: Features! = Features.getInstance()
        if (features.isFeature(GameFeatureFactory.getInstance().CHEATING)) {
            self.isCheating = true
            self.cheatProcessor = CheatGameInputProcessor(self)
            self.gameKeyEventHandler.addListener(self.cheatProcessor)
        } else {
            self.isCheating = false
            self.cheatProcessor = NoPlayerGameInput.getInstance()
        }
        self.realEndGameProcessor = EndGameProcessor(self)
        self.setEndGameProcessor(Processor.getInstance())
        self.realStartIntermissionProcessor = StartIntermissionProcessor(self)
        self.startIntermissionProcessor = Processor.getInstance()
        self.setEndGameStatePaintable(EndGamePaintable(self))
        self.setEndGamePaintable(NullPaintable.getInstance())
        self.setIntermissionPaintable(NullPaintable.getInstance())
        self.getStartIntermissionInterface().setListener(self)
    }
    

    open func notifyIntermission(_ enable: Bool) {
        if (enable) {
            self.startIntermissionProcessor = self.realStartIntermissionProcessor
        } else {
            self.startIntermissionProcessor = Processor.getInstance()
        }
        if (enable) {
            self.setIntermissionPaintable(self.getStartIntermissionPaintable())
        } else {
            self.setIntermissionPaintable(NullPaintable.getInstance())
        }
    }
    

    open func mediaInit() {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
    }
    

    open func initConfigurable(_ abeClientInformation: AbeClientInformationInterface!) {
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(50, "Setting Configurables")
        GameInitializationUtil.getInstance().initGame(abeClientInformation, self, self.gameInitializationInterfaceFactoryInterface)
        let gameFeatureFactory: GameFeatureFactory! = GameFeatureFactory.getInstance()
        let changedGameFeatureListener: ChangedGameFeatureListener! = ChangedGameFeatureListener.getInstance()
        if (changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)) {
            let features: Features! = Features.getInstance()
            self.logUtil.putF(StringMaker().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), self, "initConfigurable")
            self.mediaInit()
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND)
        }
        let sensorFeatureFactory: SensorFeatureFactory! = SensorFeatureFactory.getInstance()
        if (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION)
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
        }
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        self.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME)
    }
    

    open func initApp(_ abeClientInformation: AbeClientInformationInterface!) {
        self.initConfigurable(abeClientInformation)
        self.processorInit()
        self.sensorGameUpdateProcessor.process(self.gameLayerManager)
        self.sensorGameUpdateProcessor.sendNotifications(self.gameLayerManager)
        self.initTouch()
    }
    

    open func initTouch() {
        let gameInitializedEvent: GameInitializedEvent! = GameInitializationUtil.getInstance().EVENT
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory! = ResourceLoadingLevelFactory.getInstance()
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
        self.touchButtonFactory.defaultList()
        self.updateTouch()
        self.postInitTouch()
    }
    

    open func updateCurrentTouchInputFactory(_ nextTouchInput: BaseTouchInput!) {
        if (nextTouchInput !== self.currentTouchInputFactory) {
            self.currentTouchInputFactory = nextTouchInput
            PreLogUtil.put(self.currentTouchInputFactory.toString(), self, self.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            self.touchButtonFactory.toggle(self.isPaused(), self.currentTouchInputFactory.getList())
        }
    }
    

    open func updateTouch() {
        self.gameBehavior.updateTouch(self)
    }
    

    open func updateTouch2() {
        let features: Features! = Features.getInstance()
        if (features.isFeature(self.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            if (self.gameLayerManager.getGameInfo().getCurrentLevel() &- self.getStartLevel() == 1) {
                self.setTouchPaintableP(NullPaintable.getInstance())
            }
        }
    }
    

    open func postInitTouch() {
        self.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance(self.gameLayerManager.getForegroundBasicColor()))
        self.updateScreenButtonPaintable()
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.addCommands()
        self.setCommandListener(cmdListener)
    }
    

    open func addCommands() {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        let myCommandsFactory: MyCommandsFactory! = MyCommandsFactory.getInstance()
        if (DebugFactory.getInstance() !== NoDebug.getInstance()) {
            self.addCommand(gameCommandsFactory.START_TRACE)
        }
        self.addCommand(gameCommandsFactory.RESTART_COMMAND)
        self.addCommand(myCommandsFactory.PAUSE_COMMAND)
        self.addCommand(gameCommandsFactory.QUIT_COMMAND)
        let isOverScan: Bool = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
        if (J2MEUtil.isHTML()) {
        } else if (SWTUtil.isSWT) {
        } else if (!isOverScan) {
            if (TouchScreenFactory.getInstance().isTouch() && InGameFeatures().isAny()) {
                self.addCommand(InGameOptionsForm.DISPLAY)
            }
            self.addCommand(gameCommandsFactory.SAVE)
            self.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM)
        }
    }
    

    open func itemStateChanged(_ item: Item!) {
        do {
            let itemLabel: String! = item.getLabel()
            self.logUtil.putF(StringMaker().append(self.commonLabels.ITEM_LABEL).append(itemLabel).toString(), self, "itemStateChanged")
            if ((item is ChoiceGroup)) {
                let gameFeatureUtil: GameFeatureUtil! = GameFeatureUtil.getInstance()
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup((item as! ChoiceGroup))
                } else {
                    gameFeatureUtil.updateMultiple((item as! ChoiceGroup))
                }
            }
            self.sensorGameUpdateProcessor.process(self.gameLayerManager)
            self.updateTouch()
            self.updateScreenButtonPaintable()
            self.sensorGameUpdateProcessor.sendNotifications(self.gameLayerManager)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func updateScreenButtonPaintable() {
        self.gameBehavior.updateScreenButtonPaintable(self)
    }
    

    open func updateScreenButtonPaintable2() {
        let features: Features! = Features.getInstance()
        if (features.isFeature(self.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
            self.setStartLevel(self.gameLayerManager.getGameInfo().getCurrentLevel())
        } else if (features.isFeature(self.touchFeatureFactory.SHOW_SCREEN_BUTTONS)) {
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
        } else if (features.isFeature(self.touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            self.setTouchPaintableP(NullPaintable.getInstance())
        } else {
            self.setTouchPaintableP(NullPaintable.getInstance())
        }
    }
    

    @discardableResult open func getLayerManager() -> AllBinaryGameLayerManager! {
        return self.gameLayerManager
    }
    

    open func setLayerManager(_ layerManager: AllBinaryGameLayerManager!) {
        self.gameLayerManager = layerManager
    }
    

    @discardableResult open func isGameOver() -> Bool {
        return self.gameOver
    }
    

    open func setGameOver(_ gameOver: Bool) {
        self.gameOver = gameOver
    }
    

    open func processGameOver() {
        PreLogUtil.put(self.commonStrings.START, self, self.gameStrings.SET_GAME_OVER)
        self.setGameOver(true)
        self.removePauseCommand()
        self.setGameState(self.gameStateFactory.SHOW_END_RESULT_GAME_STATE)
        self.setEndGamePaintable(self.getEndGameStatePaintable())
    }
    

    @discardableResult open func isHighScoreSubmitted() -> Bool {
        return self.highScoreSubmitted
    }
    

    open func setHighScoreSubmitted(_ highScoreSubmitted: Bool) {
        self.highScoreSubmitted = highScoreSubmitted
        if (highScoreSubmitted) {
            self.highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
        }
        self.logUtil.putF(StringMaker().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), self, "setHighScoreSubmitted")
    }
    

    @discardableResult open func getGameState() -> GameState! {
        return self.gameState
    }
    

    open func setGameState(_ gameState: GameState!) {
        self.logUtil.putF(StringMaker().append(self.gameStrings.GAME_STATE).append(self.stringUtil.toString(gameState)).toString(), self, self.gameStrings.SET_GAME_STATE)
        self.gameState = gameState
        self.gameStateTimeHelper.setStartTimeTNT()
        self.updateEndGameProcessor()
        self.updateGameKeyEventProcessor()
        self.gameBehavior.setGameState(self)
    }
    

    open func updateGameState() {
        let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
        gameAdState.processAdState(self.gameState, self.gameLayerManager.getGameInfo().getGameType())
        if (self.gameState !== self.gameStateFactory.PLAYING_GAME_STATE) {
            gameAdState.processPageAdState()
        }
    }
    

    fileprivate func updateGameKeyEventProcessor() {
        if (self.getGameState() !== self.gameStateFactory.PLAYING_GAME_STATE || self.isCheating) {
        } else {
        }
    }
    

    open func removeAllGameKeyInputListenersOnBuild() {
        self.removeAllGameKeyInputListeners()
    }
    

    open func removeAllGameKeyInputListeners() {
        self.gameBehavior.removeAllGameKeyInputListeners(self)
    }
    

    open func removeAllGameKeyInputListeners2() {
        self.logUtil.putF("Remove PlayerInput Listeners", self, "removeAllGameKeyInputListeners")
        do {
            var index: Int32 = self.localPlayerGameInputList.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let playerGameInput: PlayerGameInput! = (self.localPlayerGameInputList.get(index) as! PlayerGameInput)
            self.removeKeyInputListener(playerGameInput)
            playerGameInput.removeNonAIInputGameKeyEvents()
            }
        }
    }
    

    open func removeKeyInputListener(_ playerGameInput: PlayerGameInput!) {
        self.gameKeyEventHandler.removeListener(playerGameInput)
    }
    

    open func updateEndGameProcessor() {
        self.gameBehavior.updateEndGameProcessor(self)
    }
    

    open func updateEndGameProcessor2() {
        if (self.getGameState() === self.gameStateFactory.SHOW_END_RESULT_GAME_STATE || self.getGameState() === self.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
            self.setEndGameProcessor(self.realEndGameProcessor)
        } else {
            self.setEndGameProcessor(Processor.getInstance())
        }
    }
    

    open func buildGameInit(_ isPortion: Bool) {
    }
    

    open func cleanupGame() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CLEANUP)
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(10, "Cleaning Up")
        self.primaryPlayerQueue.clear()
        self.secondaryPlayerQueue.clear()
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
    }
    

    open func loadResourceLoadingLevel(_ resourceLoadingLevel: ResourceLoadingLevel!) {
        let gameInitializedEvent: GameInitializedEvent! = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    }
    

    open func loadResources(_ level: Int32) {
        let gameInitializedEvent: GameInitializedEvent! = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setLevel(level)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    }
    

    open func updateColor() {
    }
    

    open func buildGame(_ portion: Int32) {
        self.screenCapture.endRecording()
        self.screenCapture.startRecording()
        let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
        let features: Features! = Features.getInstance()
        progressCanvas.addNormalPortion(portion, "Generic Build")
        self.removeAllGameKeyInputListenersOnBuild()
        self.updateTouch()
        progressCanvas.addNormalPortion(portion, "High Scores")
        self.highScoresFactoryInterface.fetchHighScores(self.gameLayerManager.getGameInfo(), self.highScoresHelper)
        self.setHighScoresPaintable(NullPaintable.getInstance())
        progressCanvas.addNormalPortion(portion, "Finishing.")
        self.getEndGameInfoP().update(self.getLayerManager().getGameInfo(), self)
        self.isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        self.setGameOver(false)
        progressCanvas.addNormalPortion(portion, "Finishing..")
        self.updateColor()
        self.getStartIntermissionPaintable().update()
        if (!self.isRunningInAnotherThread()) {
            return
        }
        progressCanvas.addNormalPortion(portion, "Finishing...")
        if (self.isMainCanvas() || !self.isInitialized()) {
            if (features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                if (self.getCustomCommandListener() != nil) {
                    progressCanvas.end()
                }
            } else {
                progressCanvas.end()
            }
            self.setInitialized(true)
        }
        if (self.getCustomCommandListener() === NullCommandListener.NULL_COMMAND_LISTENER) {
            self.logUtil.putF("Show Game Paintable in DemoCanvas Thread", self, self.BUILD_GAME)
            self.gameCanvasStartListener.showGamePaintable()
        } else {
            self.logUtil.putF("No GameCanvasStartListener", self, self.BUILD_GAME)
        }
        self.colorFillPaintable.setBasicColorP(self.gameLayerManager.getBackgroundBasicColor())
        self.gameBehavior.buildGame(self)
    }
    

    open func buildGame2() {
        PreLogUtil.put(StringMaker().append(self.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(self.localPlayerGameInputList.size()).toString(), self, self.BUILD_GAME)
        var playerGameInput: PlayerGameInput! = nil
        do {
            var index: Int32 = self.localPlayerGameInputList.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            playerGameInput = (self.localPlayerGameInputList.get(index) as! PlayerGameInput)
            PreLogUtil.put(StringMaker().append(self.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), self, self.BUILD_GAME)
            playerGameInput.removeNonAIInputGameKeyEvents()
            self.addKeyInputListener(playerGameInput)
            }
        }
    }
    

    open func addKeyInputListener(_ playerGameInput: PlayerGameInput!) {
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId())
    }
    

    open func setGameCanvasStartListener(_ gameCanvasStartListener: DemoPaintableInterface!) {
        self.gameCanvasStartListener = gameCanvasStartListener
    }
    

    open func loadState() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.LOAD)
        let hashtable: ABHashtable! = self.getLoadStateHashtable()
        if (hashtable != nil && hashtable.size() > 0) {
            let levelAsString: String! = jUnboxString(hashtable.get(jBoxString(GameInfo.LEVEL_NAME)))
            let level: Int32 = Int32(levelAsString)!.intValue()
            let gameInfo: GameInfo! = self.gameLayerManager.getGameInfo()
            gameInfo.setCurrentLevel(level)
        }
    }
    

    @discardableResult open func getLoadStateHashtable() -> ABHashtable! {
        self.logUtil.putF(StringMaker().append(self.commonLabels.START_LABEL).append(self.stringUtil.toString(self.hashtable)).toString(), self, "getLoadStateHashtable")
        return self.hashtable
    }
    

    open func setLoadStateHashtable(_ hashtable: ABHashtable!) {
        self.logUtil.putF(StringMaker().append(self.commonLabels.START_LABEL).append(self.stringUtil.toString(hashtable)).toString(), self, "setLoadStateHashtable")
        self.hashtable = hashtable
    }
    

    @discardableResult open func getCurrentStateHashtable() -> ABHashtable! {
        let hashtable: ABHashtable! = self.stdUtil.createHashtable()
        let level: Int32 = self.gameLayerManager.getGameInfo().getCurrentLevel()
        hashtable.put(jBoxString(GameInfo.LEVEL_NAME), jBoxString(jstr(level)))
        self.logUtil.putF(StringMaker().append("End: ").append(self.stringUtil.toString(hashtable)).toString(), self, "getCurrentStateHashtable")
        return hashtable
    }
    

    open func paintGameOver(_ graphics: Graphics!) {
        ForcedLogUtil.log(self.commonStrings.NOT_IMPLEMENTED, self)
    }
    

    open override func draw(_ graphics: Graphics!) {
        self.colorFillPaintable.paint(graphics)
        self.basicSetColorUtil.setBasicColorP(graphics, self.gameLayerManager.getForegroundBasicColor())
        self.gameSpecificPaintable.paint(graphics)
    }
    

    open func clear(_ graphics: Graphics!) {
        self.colorFillPaintable.paint(graphics)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        self.baseGameStatistics.nextRefresh()
        self.draw(graphics)
        self.menuPaintable.paint(graphics)
        self.progressPaintable.paint(graphics)
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    open func processEndLevelIntermissionGameState() {
    }
    

    open func nonBotPaint(_ graphics: Graphics!) {
        self.endGamePaintable.paint(graphics)
        self.intermissionPaintable.paint(graphics)
        self.paintIntermission(graphics)
        self.touchPaintable.paint(graphics)
    }
    

    open func paintIntermission(_ graphics: Graphics!) {
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
        self.inputProcessor.keyPressedByDevice(keyCode, deviceId)
    }
    

    open override func keyRepeatedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        if (self.isSingleKeyRepeatableProcessing) {
            self.inputProcessor.keyPressedByDevice(keyCode, deviceId)
        }
    }
    

    open override func keyReleasedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        self.inputProcessor.keyReleasedByDevice(self, keyCode, deviceId)
    }
    

    open func handleRawKey(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
    }
    

    @discardableResult open func endProgress(_ isProgress: Bool) -> Int32 {
        var portion: Int32 = 30
        if (isProgress && self.isMainCanvas()) {
            let myCommandsFactory: MyCommandsFactory! = MyCommandsFactory.getInstance()
            let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
            progressCanvas.start()
            self.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
            portion = 4
        }
        return portion
    }
    

    open func processPlayingGame() {
        self.cheatProcessor.update()
        self.sensorGameUpdateProcessor.getInputSensor().update()
        self.gameInputProcessor.process()
        self.gameLayerManager.process()
        self.startIntermissionProcessor.process()
    }
    

    open func threadInit() {
    }
    

    open func processGame() {
        super.process()
        if (AllBinaryMediaManager.update()) {
            if (!self.primaryPlayerQueue.process()) {
                self.secondaryPlayerQueue.process()
            }
        }
        self.mainStateProcessor.process()
        self.menuInputProcessor.processInputList()
        self.endGameProcessor.process()
        self.baseGameStatistics.nextFrame()
    }
    

    open func notifyDonePainting() {
        do {
            self.threadObjectUtil.notifyObject(self)
        }
    }
    

    open func shouldWait() {
        let features: Features! = Features.getInstance()
        if (AndroidUtil.isAndroid()) {
        } else if (features.isFeature(self.openGLFeatureFactory.OPENGL_2D)) {
        } else {
            if (features.isDefault(self.openGLFeatureFactory.OPENGL)) {
                let openGLImageSpecificFactory: OpenGLImageSpecificFactory! = OpenGLImageSpecificFactory.getInstance()
                while (openGLImageSpecificFactory.updating) {
                    Thread.sleep(self.YIELD_SLEEP)
                }
            }
        }
    }
    

    open override func run() {
        do {
            self.logUtil.putF(self.commonStrings.START_RUNNABLE, self, self.commonStrings.RUN)
            let progressCanvas: ProgressCanvas! = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Game Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if (self.getCustomCommandListener() === NullCommandListener.NULL_COMMAND_LISTENER) {
                Thread.sleep(self.YIELD_SLEEP)
            }
            self.shouldWait()
            self.threadInit()
            if (self.getCustomCommandListener() === NullCommandListener.NULL_COMMAND_LISTENER) {
                Thread.sleep(self.YIELD_SLEEP)
            }
            self.`open`()
            let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
            gameAdState.`init`()
            gameAdState.setGameIsReady(true)
            self.gameBehavior.run(self)
            self.logUtil.putF(self.commonStrings.END_RUNNABLE, self, self.commonStrings.RUN)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func run2() {
        let features: Features! = Features.getInstance()
        if (features.isDefault(self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            if (features.isDefault(self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                self.logUtil.putF(self.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), self, self.commonStrings.RUN)
            }
            if (J2MEUtil.isHTML()) {
                self.logUtil.putF(GraphicsStrings.getInstance().HTML, self, self.commonStrings.RUN)
            }
            let currentDisplayableFactory: CurrentDisplayableFactory! = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(self.gameRunnable)
            currentDisplayableFactory.setDisplayable(self)
            OpenGLThreadUtil.getInstance().onResume()
        } else if (features.isDefault(self.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) {
            self.logUtil.putF(self.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), self, self.commonStrings.RUN)
            OpenGLThreadUtil.getInstance().onResume()
            while (self.isRunning()) {
                self.run3()
            }
            self.end()
        } else {
            self.logUtil.putF("this thread", self, self.commonStrings.RUN)
            while (self.isRunning()) {
                self.run3()
            }
            self.end()
        }
    }
    

    open func run3() {
        self.loopTimeHelper.setStartTime(self.gameTickTimeDelayHelper.setStartTime())
        self.gameTickDisplayInfoSingleton.update()
        self.processGame()
        self.processLoopSleep()
    }
    

    open override func setRunning(_ running: Bool) {
        super.setRunning(running)
        do {
            let features: Features! = Features.getInstance()
            if (running) {
            } else {
                if (features.isDefault(self.openGLFeatureFactory.OPENGL) || SWTUtil.isSWT) {
                    if (self.gameLayerManager.getGameInfo().getGameType() !== self.gameTypeFactory.BOT) {
                        let currentDisplayableFactory: CurrentDisplayableFactory! = CurrentDisplayableFactory.getInstance()
                        currentDisplayableFactory.clearRunnable()
                    }
                    self.end()
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func end() {
        self.screenCapture.endRecording()
        self.baseGameStatistics.add(StringMaker().append(self.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        self.baseGameStatistics.`init`()
        self.gameKeyEventHandler.removeListener(self.cheatProcessor)
        self.close()
        self.removeAllGameKeyInputListeners()
        self.endGameThread()
    }
    

    open func endGameThread() {
        DisplayChangeEventHandler.getInstance().removeListener(self)
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
        let gameAdState: GameAdState! = self.gameAdStateFactory.getCurrentInstance()
        gameAdState.notPlayingAdState()
    }
    

    @discardableResult open func createHighScore(_ score: Int64) -> HighScore! {
        let gameInfo: GameInfo! = self.gameLayerManager.getGameInfo()
        return HighScore(0, "NONE", GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score)
    }
    

    open func setHighScore(_ abeClientInformation: AbeClientInformationInterface!, _ name: String!, _ score: Int64, _ autoSubmit: Bool, _ isLast: Bool) {
        self.gameBehavior.setHighScore(abeClientInformation, self, name, score, autoSubmit, isLast)
    }
    

    open func setHighScore2(_ abeClientInformation: AbeClientInformationInterface!, _ name: String!, _ score: Int64, _ autoSubmit: Bool, _ isLast: Bool) {
        let highScore: HighScore! = self.createHighScore(score)
        let textBox: HighScoreTextBox! = HighScoreTextBox(self.highScoresFactoryInterface, self.highScoresHelper, abeClientInformation, self.gameLayerManager.getGameInfo(), self.getCustomCommandListener(), name, highScore, self.gameLayerManager.getBackgroundBasicColor(), self.gameLayerManager.getForegroundBasicColor())
        if (isLast) {
            self.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox)
        }
        if (autoSubmit) {
            SecondaryThreadPool.getInstance().runTask(SaveHighScoreRunnable(isLast, textBox))
        }
    }
    

    @discardableResult open func getGameStateTimeHelper() -> TimeDelayHelper! {
        return self.gameStateTimeHelper
    }
    

    open func setInitialized(_ initialized: Bool) {
        self.initialized = initialized
    }
    

    @discardableResult open func isInitialized() -> Bool {
        return self.initialized
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return AllBinaryGameCanvas.id
    }
    

    open func setProgressPaintable(_ paintable: PaintableInterface!) {
        self.progressPaintable = paintable
    }
    

    @discardableResult open func getStartIntermissionInterface() -> IntermissionInterface! {
        return self.startIntermissionInterface
    }
    

    @discardableResult open func getEndLevelIntermissionInterface() -> IntermissionInterface! {
        return self.endLevelIntermissionInterface
    }
    

    open func setTouchPaintableP(_ paintable: Paintable!) {
        self.touchPaintable = paintable
    }
    

    @discardableResult open func getTouchPaintableP() -> Paintable! {
        return self.touchPaintable
    }
    

    open func setEndGamePaintable(_ endGamePaintable: Paintable!) {
        self.endGamePaintable = endGamePaintable
    }
    

    @discardableResult open func getEndGamePaintable() -> Paintable! {
        return self.endGamePaintable
    }
    

    open func setIntermissionPaintable(_ intermissionPaintable: Paintable!) {
        self.intermissionPaintable = intermissionPaintable
    }
    

    @discardableResult open func getIntermissionPaintable() -> Paintable! {
        return self.intermissionPaintable
    }
    

    @discardableResult open func getEndGameInfoP() -> EndGameInfo! {
        return self.endGameInfo
    }
    

    open func setHighScoresPaintable(_ highScoresPaintable: Paintable!) {
        self.highScoresPaintable = highScoresPaintable
    }
    

    @discardableResult open func getHighScoresPaintable() -> Paintable! {
        return self.highScoresPaintable
    }
    

    @discardableResult open func getRealHighScoresPaintable() -> HighScoresPaintable! {
        return self.realHighScoresPaintable
    }
    

    open func clearPlayerGameInputList() {
        var playerGameInput: PlayerGameInput! = nil
        do {
            var index: Int32 = self.localPlayerGameInputList.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            playerGameInput = (self.localPlayerGameInputList.get(index) as! PlayerGameInput)
            self.gameKeyEventHandler.removeListener(playerGameInput)
            }
        }
        self.localPlayerGameInputList.clear()
    }
    

    open func addPlayerGameInput(_ playerGameInput: PlayerGameInput!) {
        self.localPlayerGameInputList.add(playerGameInput)
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
    

    @discardableResult open func getStartLevel() -> Int32 {
        return self.startLevel
    }
    

    open func setStartLevel(_ startLevel: Int32) {
        self.startLevel = startLevel
    }
    

    open func setTouchButtonsPaintable(_ touchButtonsPaintable: Paintable!) {
        self.touchButtonsPaintable = touchButtonsPaintable
    }
    

    @discardableResult open func getTouchButtonsPaintable() -> Paintable! {
        return self.touchButtonsPaintable
    }
    

    open func setGameInputProcessor(_ gameInputProcessor: Processor!) {
        self.gameInputProcessor = gameInputProcessor
    }
    

    @discardableResult open func getGameInputProcessor() -> Processor! {
        return self.gameInputProcessor
    }
    

    open func setEndGameProcessor(_ endGameProcessor: Processor!) {
        self.endGameProcessor = endGameProcessor
    }
    

    @discardableResult open func getEndGameProcessor() -> Processor! {
        return self.endGameProcessor
    }
    

    open func setEndGameStatePaintable(_ endGameStatePaintable: Paintable!) {
        self.endGameStatePaintable = endGameStatePaintable
    }
    

    @discardableResult open func getEndGameStatePaintable() -> Paintable! {
        return self.endGameStatePaintable
    }
    

    open func setNonBotPaintableP(_ nonBotPaintable: Paintable!) {
        self.nonBotPaintable = nonBotPaintable
    }
    

    @discardableResult open func getNonBotPaintableP() -> Paintable! {
        return self.nonBotPaintable
    }
    

    open func setStartIntermissionPaintable(_ startIntermissionPaintable: InitUpdatePaintable!) {
        self.startIntermissionPaintable = startIntermissionPaintable
    }
    

    @discardableResult open func getStartIntermissionPaintable() -> InitUpdatePaintable! {
        return self.startIntermissionPaintable
    }
    

    open func setMainStateProcessor(_ mainStateProcessor: Processor!) {
        self.mainStateProcessor = mainStateProcessor
    }
    

    @discardableResult open func getMainStateProcessor() -> Processor! {
        return self.mainStateProcessor
    }
    

    open func setProcessGameProcessor(_ processGameProcessor: Processor!) {
        self.processGameProcessor = processGameProcessor
    }
    

    @discardableResult open func getProcessGameProcessor() -> Processor! {
        return self.processGameProcessor
    }
    

    open func setOpenMenuPaintable(_ openMenuPaintable: Paintable!) {
        self.openMenuPaintable = openMenuPaintable
    }
    

    @discardableResult open func getOpenMenuPaintable() -> Paintable! {
        return self.openMenuPaintable
    }
    

    open func setPopupMenuInputProcessor(_ popupMenuInputProcessor: BasicMenuInputProcessor!) {
        self.popupMenuInputProcessor = popupMenuInputProcessor
    }
    

    @discardableResult open func getPopupMenuInputProcessor() -> BasicMenuInputProcessor! {
        return self.popupMenuInputProcessor
    }
    

    @discardableResult open func getSensorGameUpdateProcessor() -> SensorGameUpdateProcessor! {
        return self.sensorGameUpdateProcessor
    }
    

    @discardableResult open func getRawGameInputProcessor() -> InputProcessor! {
        return self.rawGameInputProcessor
    }
    

    @discardableResult open func getRawInputProcessor() -> InputProcessor! {
        return self.rawInputProcessor
    }
    

    open func setInputProcessor(_ inputProcessor: InputProcessor!) {
        self.inputProcessor = inputProcessor
    }
    

    @discardableResult open func getInputProcessor() -> InputProcessor! {
        return self.inputProcessor
    }
    

    open func setMenuPaintable(_ menuPaintable: Paintable!) {
        self.menuPaintable = menuPaintable
    }
    

    @discardableResult open func getMenuPaintable() -> Paintable! {
        return self.menuPaintable
    }
    

    fileprivate func setFormPaintable(_ formPaintable: Paintable!) {
        self.formPaintable = formPaintable
    }
    

    @discardableResult open func getFormPaintable() -> Paintable! {
        return self.formPaintable
    }
    

    open func setGameSpecificPaintableP(_ gameSpecificPaintable: Paintable!) {
        self.gameSpecificPaintable = gameSpecificPaintable
    }
    

    @discardableResult open func getGameSpecificPaintableP() -> Paintable! {
        return self.gameSpecificPaintable
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
    

    @discardableResult open override func getType() -> Int32 {
        return AllBinaryGameCanvas.TYPE
    }
    

    @discardableResult open override func getTitle() -> String! {
        return super.getTitle()
    }
    

    @discardableResult open override func isPaused() -> Bool {
        return super.isPaused()
    }
}

