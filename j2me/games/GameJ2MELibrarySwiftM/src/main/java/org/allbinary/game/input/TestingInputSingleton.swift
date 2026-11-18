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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.view.ViewPosition

open class TestingInputSingleton: AllBinaryGameLayer, GameInputInterface {
    fileprivate static let instance: TestingInputSingleton! = TestingInputSingleton()
    public var inputProcessorArray: JArray<GameInputProcessor?>! = nil
    fileprivate var testInputPaintable: PaintableInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.inputProcessorArray = JArray<GameInputProcessor?>(InputFactory.getInstance().MAX, nil)
    self.testInputPaintable = NullPaintable.getInstance()
    }
    

    @discardableResult open class func getInstance() -> TestingInputSingleton! {
        return TestingInputSingleton.instance
    }
    

    public init() {
        super.init(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD())
        self.initFields()
        GameInputProcessorUtil.`init`(self.inputProcessorArray)
    }
    

    open func initInputProcessors() {
    }
    

    open func initInputProcessorsForTestInput(_ aTestInputInterface: TestInputInterface!) {
        let testInputInterface: TestInputInterface! = aTestInputInterface
        self.testInputPaintable = testInputInterface
        self.inputProcessorArray[Canvas.UP] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
                testInputInterface.up()
            } */
        self.inputProcessorArray[Canvas.DOWN] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
                testInputInterface.down()
            } */
        self.inputProcessorArray[Canvas.LEFT] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
                testInputInterface.left()
            } */
        self.inputProcessorArray[Canvas.RIGHT] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
                testInputInterface.right()
            } */
        self.inputProcessorArray[Canvas.KEY_NUM7] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
                testInputInterface.strafeLeft()
            } */
        self.inputProcessorArray[Canvas.KEY_NUM9] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            open func processEvent(_ allbinaryLayerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
                testInputInterface.strafeRight()
            } */
        GameInputProcessorUtil.`init`(self.inputProcessorArray)
    }
    

    open func processInputList(_ allbinaryLayerManager: AllBinaryLayerManager!, _ list: BasicArrayList!) {
        var key: Int32 = 0
        var gameKeyEvent: GameKeyEvent! = nil
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            gameKeyEvent = ((list.objectArray[index] as! GameKeyEvent))
            key = gameKeyEvent.getKey()
            self.inputProcessorArray[key]!.processEvent(allbinaryLayerManager, GameKeyEvent.NONE)
            }
        }
    }
    

    open override func processInput(_ allbinaryLayerManager: AllBinaryLayerManager!) {
        self.processInputList(allbinaryLayerManager, self.getGameKeyEventList())
        self.getGameKeyEventList().clear()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.testInputPaintable.paint(graphics)
    }
    

    @discardableResult open override func implmentsGameInputInterface() -> Bool {
        return true
    }
}

