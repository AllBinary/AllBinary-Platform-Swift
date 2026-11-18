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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.canvas.Processor
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.displayable.RepaintBehavior
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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory
// import org.allbinary.graphics.form.FormPaintable
// import org.allbinary.graphics.form.FormTypeFactory
// import org.allbinary.graphics.form.PaintableForm
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory
// import org.allbinary.graphics.form.item.CommandTextItemArrayFactory
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.graphics.form.item.validation.AllCommandsVisitor
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayListD

open class GameCommandCanvas: MyCanvas, MenuListener, DisplayChangeEventListener, UpdateMyFontInterface {
    fileprivate static let id: Int32 = 0
    fileprivate var repaintProcessor: Processor! = nil
    public var gameInputStrings: GameInputStrings! = nil
    public var foregroundBasicColor: BasicColor! = nil
    public var backgroundBasicColor: BasicColor! = nil
    public var inputToGameKeyMapping: InputToGameKeyMapping! = nil
    public var gameKeyFactory: GameKeyFactory! = nil
    fileprivate var gameKeyEventFactory: GameKeyEventFactory! = nil
    fileprivate var downGameKeyEventHandler: DownGameKeyEventHandler! = nil
    fileprivate var upGameKeyEventHandler: UpGameKeyEventHandler! = nil
    public var repaintBehavior: RepaintBehavior! = nil
    public var updateMyFontProcessor: MyFontProcessor! = nil
    public var myFontProcessor: MyFontProcessor! = nil
    public var foregroundColor: Int32 = 0
    public var backgroundColor: Int32 = 0
    fileprivate var menuInputProcessor: BasicMenuInputProcessor! = nil
    fileprivate var menuPaintable: Paintable! = nil
    fileprivate var menuForm: PaintableForm! = nil
    fileprivate var isSingleKeyRepeatableProcessing: Bool = false
    public var fontHeight: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(self)
    self.gameInputStrings = GameInputStrings.getInstance()
    
    
    self.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    self.gameKeyFactory = GameKeyFactory.getInstance()
    self.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    self.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    self.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    
    
    self.menuInputProcessor = NoMenuInputProcessor.getInstance()
    self.menuPaintable = NullPaintable.getInstance()
    self.menuForm = PaintableForm.getNullPaintableForm()
    self.isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
    self.fontHeight = 0
    }
    

    public init(_ cmdListener: CommandListener!, _ name: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST)
        self.initFields()
        self.repaintBehavior = RepaintBehavior.getInstance()
        self.foregroundBasicColor = foregroundBasicColor
        self.backgroundBasicColor = backgroundBasicColor
        self.foregroundColor = self.foregroundBasicColor.intValue()
        self.backgroundColor = self.backgroundBasicColor.intValue()
        self.initCommands(cmdListener)
        if (cmdListener !== NullCommandListener.NULL_COMMAND_LISTENER) {
            do {
                self.initMenu()
                self.repaintProcessor.process()
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        do {
            let font: Font! = graphics.getFont()
            self.logUtil.putF(StringMaker().append(self.commonStrings.START).append(self.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(self.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), self, self.canvasStrings.UPDATE_MEASUREMENT)
            self.fontHeight = font.getHeight()
            let rectangle: Rectangle! = self.createRectangle(self.menuForm.size())
            self.menuForm.`init`(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM)
            self.update()
        } /* catch (Exception e): a thrown Java exception stops the program */
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open override func onDisplayChangeEvent(_ displayChangeEvent: DisplayChangeEvent!) {
        self.logUtil.putF(StringMaker().append(self.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), self, self.canvasStrings.ON_DISPLAY_CHANGE_EVENT)
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    }
    

    open func initMenu() {
        let form: ScrollSelectionForm! = self.createForm()
        self.menuForm = form
        if (form !== ScrollSelectionFormNoneFactory.getInstance()) {
            self.setMenuInputProcessor(ImmediateCommandFormInputProcessor(BasicArrayListD(), -1, self, form))
            self.menuPaintable = FormPaintable(form)
        }
        self.repaintBehavior.onChangeRepaint(self)
    }
    

    @discardableResult open func createForm() -> ScrollSelectionForm! {
        let items: JArray<ABCustomItem?>! = CommandTextItemArrayFactory(AllCommandsVisitor()).getInstance(self.getCommandStack(), self.backgroundBasicColor, self.foregroundBasicColor)
        let rectangle: Rectangle! = self.createRectangle(items.length)
        return CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, self.backgroundBasicColor, self.foregroundBasicColor)
    }
    

    @discardableResult open func createRectangle(_ size: Int32) -> Rectangle! {
        let height: Int32 = size &* self.fontHeight
        let startY: Int32 = (self.displayInfo.getLastHeight() &* 2 / 3) &- height
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let rectangle: Rectangle! = Rectangle(pointFactory.createXY(30, startY), self.displayInfo.getLastWidth() &- 30, startY)
        return rectangle
    }
    

    open override func `open`() {
        self.logUtil.putF(self.commonStrings.START, self, "open")
        BasicMotionGesturesHandler.getInstance().addListenerInterface(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(self.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    }
    

    open override func close() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CLOSE)
        BasicMotionGesturesHandler.getInstance().removeListener(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(self.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().removeListener(self)
    }
    

    open func update() {
        self.repaintProcessor.process()
    }
    

    @discardableResult open override func getSourceId() -> Int32 {
        return GameCommandCanvas.id
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
        self.logUtil.putF(StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), self, self.gameInputStrings.KEY_PRESSED)
        self.addGameKeyEvent(keyCode, 0, false)
    }
    

    open override func keyReleasedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        self.removeGameKeyEvent(keyCode, deviceId, false)
    }
    

    open override func keyRepeatedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        if (self.isSingleKeyRepeatableProcessing) {
            self.addGameKeyEvent(keyCode, deviceId, true)
        }
    }
    

    fileprivate func addGameKeyEvent(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
        do {
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if (gameKey !== self.gameKeyFactory.NONE) {
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(self, gameKey)
                self.downGameKeyEventHandler.fireEvent(gameKeyEvent)
                self.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                self.logUtil.putF(StringMaker().append(self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), self, self.gameInputStrings.ADD_KEY_EVENT)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    fileprivate func removeGameKeyEvent(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
        do {
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if (gameKey !== self.gameKeyFactory.NONE) {
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(self, gameKey)
                self.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                self.logUtil.putF(StringMaker().append(self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), self, self.gameInputStrings.REMOVE_KEY_EVENT)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        self.menuPaintable.paint(graphics)
        self.repaintBehavior.repaint(self)
    }
    

    fileprivate func setMenuInputProcessor(_ menuInputProcessor: BasicMenuInputProcessor!) {
        self.menuInputProcessor = menuInputProcessor
    }
    

    @discardableResult open func getMenuInputProcessor() -> BasicMenuInputProcessor! {
        return self.menuInputProcessor
    }
}

