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
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.InputProcessor
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.DownKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker

open class GameCanvasInputProcessor: InputProcessor {
    public var logUtil: LogUtil! = nil
    fileprivate var allBinaryGameCanvas: AllBinaryGameCanvas! = nil
    fileprivate var downGameKeyEventHandler: DownGameKeyEventHandler! = nil
    fileprivate var upGameKeyEventHandler: UpGameKeyEventHandler! = nil
    fileprivate var downKeyEventHandler: DownKeyEventHandler! = nil
    fileprivate var smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = nil
    fileprivate var inputToGameKeyMapping: InputToGameKeyMapping! = nil
    fileprivate var NONE: GameKey! = nil
    fileprivate var gameKeyEventFactory: GameKeyEventFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    self.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    self.downKeyEventHandler = DownKeyEventHandler.getInstance()
    self.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    self.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    self.NONE = GameKeyFactory.getInstance().NONE
    self.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    }
    

    public init(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.allBinaryGameCanvas = allBinaryGameCanvas
        self.inputToGameKeyMapping.`init`(self.allBinaryGameCanvas)
    }
    

    open override func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        do {
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(self.allBinaryGameCanvas, keyCode)
            if (gameKey !== self.NONE) {
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(self.allBinaryGameCanvas, gameKey)
                self.downGameKeyEventHandler.fireEvent(gameKeyEvent)
                self.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                self.logUtil.putF(StringMaker().append(self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), self, self.gameInputStrings.ADD_KEY_EVENT)
            }
            let keyCodeAsInteger: Int32! = self.smallIntegerSingletonFactory.getAtNoThrow(keyCode)
            self.downKeyEventHandler.fireEventI(keyCodeAsInteger)
            self.downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func keyReleasedByDevice(_ canvas: Canvas!, _ keyCode: Int32, _ deviceId: Int32) {
        self.removeGameKeyEvent(canvas, keyCode, deviceId, false)
    }
    

    fileprivate func removeGameKeyEvent(_ canvas: Canvas!, _ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
        do {
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode)
            if (gameKey !== self.NONE) {
                let gameKeyEventSourceInterface: GameKeyEventSourceInterface! = (canvas as Any as? GameKeyEventSourceInterface)
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                self.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                self.logUtil.putF(StringMaker().append(self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), self, self.gameInputStrings.REMOVE_KEY_EVENT)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

