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
// package org.allbinary.input

import J2SEForSwiftLibrary
// import org.allbinary.android.input.motion.AnalogLocationInputProcessor
// import org.allbinary.game.input.GameInputProcessor
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.analog.AnalogLocationInput
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.graphics.CustomGPoint
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class DirectionalAnalogLocationInputProcessor: AnalogLocationInputProcessor, GameKeyEventSourceInterface {
    public var logUtil: LogUtil! = nil
    fileprivate var inputProcessorArray: JArray<GameInputProcessor?>! = nil
    fileprivate var gameKeyFactory: GameKeyFactory! = nil
    fileprivate var leftGameKeyEvent: GameKeyEvent! = nil
    fileprivate var rightGameKeyEvent: GameKeyEvent! = nil
    fileprivate var upGameKeyEvent: GameKeyEvent! = nil
    fileprivate var downGameKeyEvent: GameKeyEvent! = nil
    fileprivate var leftTriggerGameKeyEvent: GameKeyEvent! = nil
    fileprivate var rightTriggerGameKeyEvent: GameKeyEvent! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.gameKeyFactory = GameKeyFactory.getInstance()
    self.leftGameKeyEvent = GameKeyEvent.NONE
    self.rightGameKeyEvent = GameKeyEvent.NONE
    self.upGameKeyEvent = GameKeyEvent.NONE
    self.downGameKeyEvent = GameKeyEvent.NONE
    self.leftTriggerGameKeyEvent = GameKeyEvent.NONE
    self.rightTriggerGameKeyEvent = GameKeyEvent.NONE
    }
    

    public init(_ inputProcessorArray: JArray<GameInputProcessor?>!) {
        super.init()
        self.initFields()
        self.inputProcessorArray = inputProcessorArray
        do {
            self.leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, self.gameKeyFactory.LEFT)
            self.rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, self.gameKeyFactory.RIGHT)
            self.upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, self.gameKeyFactory.UP)
            self.downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, self.gameKeyFactory.DOWN)
            self.leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, self.gameKeyFactory.KEY_NUM0)
            self.rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(self, self.gameKeyFactory.KEY_NUM5)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func process(_ allbinaryLayerManager: AllBinaryLayerManager!, _ analogLocationInput: AnalogLocationInput!) {
        do {
            var customGPoint: CustomGPoint! = nil
            customGPoint = analogLocationInput.getCustomGPoint()
            let x: Int32 = customGPoint.getX()
            let y: Int32 = customGPoint.getY()
            let leftTrigger: Int32 = analogLocationInput.getLeftTrigger()
            let rightTrigger: Int32 = analogLocationInput.getRightTrigger()
            if (x < 0) {
                self.inputProcessorArray[self.leftGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, self.leftGameKeyEvent, x)
            } else if (x > 0) {
                self.inputProcessorArray[self.rightGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, self.rightGameKeyEvent, x)
            }
            if (y < 0) {
                self.inputProcessorArray[self.downGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, self.downGameKeyEvent, y)
            } else if (y > 0) {
                self.inputProcessorArray[self.upGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, self.upGameKeyEvent, y)
            }
            if (leftTrigger > 0) {
                self.inputProcessorArray[self.leftTriggerGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, self.leftTriggerGameKeyEvent, leftTrigger)
            }
            if (rightTrigger > 0) {
                self.inputProcessorArray[self.rightTriggerGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, self.rightTriggerGameKeyEvent, rightTrigger)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return 0
    }
}

