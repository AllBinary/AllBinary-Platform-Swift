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
// package org.allbinary.graphics.canvas.transition.progress

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.canvas.Processor
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.item.ABCustomGaugeItem
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.midlet.AllBinaryMidlet
// import org.allbinary.thread.PathFindingThreadPool
// import org.allbinary.thread.ThreadPool

open class ProgressCanvas: RunnableCanvas, PaintableInterface, UpdateMyFontInterface {
    public var hasPainted: Bool = false
    fileprivate var backgroundBasicColor: BasicColor! = nil
    public var GAUGE_PAINTABLE: Paintable! = nil
    fileprivate var maxValue: Float = 0.0
    public var gauge: ABCustomGaugeItem! = nil
    fileprivate var TEXT: String! = nil
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    public var allbinaryMidlet: AllBinaryMidlet! = nil
    fileprivate var value: Float = 0.0
    fileprivate var text: String! = nil
    fileprivate var background: Bool = false
    public var paintable: PaintableInterface! = nil
    public var inProgress: Bool = false
    fileprivate var IN_GAME_PROCESSOR: Processor! = nil
    public var inGameProcessor: Processor! = nil
    public var progressEndListener: ProgressEndListener! = nil
    fileprivate var backgroundLabel: String! = nil
    fileprivate var START_BACKGROUND: String! = nil
    public var ADD_PORTION: String! = nil
    public var ADD_EARLY_PORTION: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.hasPainted = false
    
    self.GAUGE_PAINTABLE = ProgressPaintable(self)
    self.maxValue = 100.0
    
    self.TEXT = self.commonStrings.LOADING
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.allbinaryMidlet = AllBinaryMidlet.getNullInstance()
    self.value = 0.0
    self.text = self.TEXT
    self.background = true
    self.paintable = self.GAUGE_PAINTABLE
    self.inProgress = false
    self.IN_GAME_PROCESSOR = Processor() /* Java anonymous class body: implement it as a named subclass
        self.pathFindingThreadPool = PathFindingThreadPool.getInstance()
        

        open override func process() {
            self.pathFindingThreadPool.runAPriorityTask()
        } */
    self.inGameProcessor = Processor.getInstance()
    self.progressEndListener = ProgressEndListener.instance
    self.backgroundLabel = "Background AI Game Loading..."
    self.START_BACKGROUND = "startBackground"
    self.ADD_PORTION = "addPortion"
    self.ADD_EARLY_PORTION = "addEarlyPortion"
    }
    

    public init(_ title: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(NullCommandListener.NULL_COMMAND_LISTENER, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false)
        self.initFields()
        self.backgroundBasicColor = backgroundBasicColor
        self.gauge = ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, JMath.toInt32(Double(self.maxValue)), 0, backgroundBasicColor, foregroundBasicColor)
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.gauge.setHeight(font.getHeight() &+ 2)
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func `init`(_ gameMidlet: AllBinaryMidlet!) {
        self.allbinaryMidlet = gameMidlet
    }
    

    open func update(_ graphics: Graphics!) {
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
    }
    

    @discardableResult public func getMaxValue() -> Float {
        return self.maxValue
    }
    

    open func start() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.START_METHOD_NAME)
        self.setBackground(true)
        self.gauge.setHeight(30)
        self.gauge.setLabel(self.commonStrings.PLEASE_WAIT)
        self.setText(self.TEXT)
        self.setValue(0)
        self.inGameProcessor = Processor.getInstance()
        self.paintable = self.GAUGE_PAINTABLE
        self.inProgress = true
    }
    

    open func startBackground(_ background: Bool) {
        self.logUtil.putF(self.commonStrings.START, self, self.START_BACKGROUND)
        self.setBackground(background)
        self.myFontProcessor = self.updateMyFontProcessor
        self.gauge.setLabel(self.backgroundLabel)
        self.setText(self.TEXT)
        self.setValue(0)
        self.inGameProcessor = Processor.getInstance()
        self.paintable = self.GAUGE_PAINTABLE
    }
    

    open func endActual() {
        self.allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas.NULL_CANVAS)
        self.inProgress = false
        self.inGame()
    }
    

    open func inGame() {
        self.progressEndListener.onEndEvent()
        self.inGameProcessor = self.IN_GAME_PROCESSOR
    }
    

    open func end() {
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.END_METHOD_NAME)
        self.gauge.setValue(self.getMaxValue())
        self.endActual()
        self.paintable = NullPaintable.getInstance()
    }
    

    open func endFromInitialLazyLoadingComplete() {
        self.progressEndListener.onEndEvent()
        self.gauge.setValue(self.getMaxValue())
        self.inGameProcessor = self.IN_GAME_PROCESSOR
    }
    

    @discardableResult open func isInGame() -> Bool {
        if (self.inGameProcessor === self.IN_GAME_PROCESSOR) {
            return true
        }
        return false
    }
    

    open func endIfPaintedSinceStart() {
    }
    

    open func addEarlyPortion(_ value: Int32, _ text: String!, _ index: Int32) {
        self.setText(StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString())
        self.gauge.setValue(self.gauge.getValue() + self.getMaxValue() / Float(value))
    }
    

    open func addPortion(_ value: Int32, _ text: String!, _ index: Int32) {
        self.setText(StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString())
        PreLogUtil.put(self.text, self, self.ADD_PORTION)
        self.gauge.setValue(self.gauge.getValue() + self.getMaxValue() / Float(value))
    }
    

    open func addNormalPortion(_ value: Int32, _ text: String!) {
        if (self.text != text) {
            PreLogUtil.put(text, self, self.ADD_PORTION)
        }
        self.setText(text)
        self.gauge.setValue(self.gauge.getValue() + self.getMaxValue() / Float(value))
    }
    

    open func setValue(_ value: Int32) {
        self.value = Float(value)
        self.gauge.setValue(Float(value))
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.paintable.paint(graphics)
    }
    

    open func paint2(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        graphics.setColor(self.backgroundBasicColor.intValue())
        graphics.fillRect(0, 0, self.displayInfo.getLastWidth(), self.displayInfo.getLastHeight())
        self.gauge.paintXY(graphics, 0, 0)
        self.hasPainted = true
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getValue() -> Float {
        return self.value
    }
    

    open func setText(_ text: String!) {
        self.text = text
    }
    

    @discardableResult open func getText() -> String! {
        return self.text
    }
    

    open func setBackground(_ background: Bool) {
        self.background = background
    }
    

    @discardableResult open func isBackground() -> Bool {
        return self.background
    }
}

