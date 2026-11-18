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
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventListenerInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.BasicArrayList

open class PlayerGameInput: GameInput, GameKeyEventListenerInterface {
    public var gameInputStrings: GameInputStrings! = nil
    fileprivate var playerInputId: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.gameInputStrings = GameInputStrings.getInstance()
    
    }
    

    public init(_ gameKeyEventList: BasicArrayList!, _ removalGameKeyEventList: BasicArrayList!, _ playerInputId: Int32) {
        super.init(gameKeyEventList, removalGameKeyEventList)
        self.initFields()
        self.playerInputId = playerInputId
    }
    

    open func onPressGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
    }
    

    open func onDownGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        self.add(gameKeyEvent)
    }
    

    open func onDownKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        self.add(gameKeyEvent)
        self.addForRemoval(gameKeyEvent)
    }
    

    open func onDownKey(_ gameKeyEvent: Int32!) {
        PreLogUtil.put(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.toString()).toString(), self, self.gameInputStrings.ON_DOWN_GAME_KEY)
    }
    

    open func onUpGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        self.addForRemoval(gameKeyEvent)
    }
    

    open func onUpKeyEvent(_ gameKeyEvent: Int32!) {
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    @discardableResult open func getPlayerInputId() -> Int32 {
        return self.playerInputId
    }
}

