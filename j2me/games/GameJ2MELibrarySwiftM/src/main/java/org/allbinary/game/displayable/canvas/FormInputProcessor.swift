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
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.InputProcessor
// import org.allbinary.game.input.PlatformKeyFactory
// import org.allbinary.game.input.event.DownKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

open class FormInputProcessor: InputProcessor {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var gameKeyEventFactory: GameKeyEventFactory! = nil
    fileprivate var downKeyEventHandler: DownKeyEventHandler! = nil
    fileprivate var upGameKeyEventHandler: UpGameKeyEventHandler! = nil
    fileprivate var inputFactory: InputFactory! = nil
    fileprivate var platformKeyFactory: PlatformKeyFactory! = nil
    fileprivate var allBinaryGameCanvas: AllBinaryGameCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    self.downKeyEventHandler = DownKeyEventHandler.getInstance()
    self.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    self.inputFactory = InputFactory.getInstance()
    self.platformKeyFactory = PlatformKeyFactory.getInstance()
    
    }
    

    public init(_ allBinaryGameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    open override func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        do {
            PreLogUtil.put(StringMaker().append(self.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(self.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), self, self.gameInputStrings.KEY_PRESSED)
            let input: Input! = self.inputFactory.getInstanceById(keyCode)
            let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(self.allBinaryGameCanvas, input)
            self.downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func keyReleasedByDevice(_ canvas: Canvas!, _ keyCode: Int32, _ deviceId: Int32) {
        do {
            let input: Input! = self.inputFactory.getInstanceById(keyCode)
            if (self.platformKeyFactory.isEnter(input)) {
                PreLogUtil.put(StringMaker().append(self.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(self.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), self, self.gameInputStrings.KEY_RELEASED)
                let gameKey: GameKey! = GameKeyFactory.getInstance().KEY_NUM0
                let gameKeyEventSourceInterface: GameKeyEventSourceInterface! = (canvas as Any as? GameKeyEventSourceInterface)
                let gameKeyEvent: GameKeyEvent! = self.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                self.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

