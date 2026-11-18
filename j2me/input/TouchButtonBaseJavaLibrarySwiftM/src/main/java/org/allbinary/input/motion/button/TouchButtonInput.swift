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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public final class TouchButtonInput: Input, GameKeyEventSourceInterface {
    public var logUtil: LogUtil! = nil
    fileprivate var gameKeyEventFactory: GameKeyEventFactory! = nil
    fileprivate var TOUCH_BUTTON_SOURCE_ID: Int32 = 0
    fileprivate var gameKeyEvent: GameKeyEvent! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    self.TOUCH_BUTTON_SOURCE_ID = self.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID
    self.gameKeyEvent = GameKeyEvent.NONE
    }
    

    public override init(_ id: Int32, _ name: String!) {
        super.init(id, name)
        self.initFields()
        let inputFactory: InputFactory! = InputFactory.getInstance()
        inputFactory.add(self.getId(), self)
    }
    

    public func update(_ inputToGameKeyMapping: InputToGameKeyMapping!) {
        do {
            let gameKey: GameKey! = inputToGameKeyMapping.getInstance(self.getId())
            self.gameKeyEvent = self.gameKeyEventFactory.getInstanceForInput(self, gameKey)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult public func getSourceId() -> Int32 {
        return self.TOUCH_BUTTON_SOURCE_ID
    }
    

    @discardableResult public func getGameKeyEvent() -> GameKeyEvent! {
        return self.gameKeyEvent
    }
}

