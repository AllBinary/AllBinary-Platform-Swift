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
// package org.allbinary.game.input.motion.action

import J2SEForSwiftLibrary
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.input.motion.gesture.MotionGestureInput

open class GameKeyCompleteMotionGestureInputEvent: CompleteMotionGestureInputEvent, GameKeyEventSourceInterface {
    fileprivate var gameKey: GameKey! = nil
    fileprivate var gameKeyEvent: GameKeyEvent! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.gameKey = GameKey.NULL_GAME_KEY
    self.gameKeyEvent = GameKeyEvent.NONE
    }
    

    public init(_ name: String!, _ motionGestureInput: MotionGestureInput!, _ inputToGameKeyMapping: InputToGameKeyMapping!) {
        super.init(name, motionGestureInput)
        self.initFields()
    }
    

    @discardableResult open func getSourceId() -> Int32 {
        return 0
    }
    

    open func update() {
    }
    

    open func setGameKeyEvent(_ gameKeyEvent: GameKeyEvent!) {
        self.gameKeyEvent = gameKeyEvent
    }
    

    @discardableResult open func getGameKeyEvent() -> GameKeyEvent! {
        return self.gameKeyEvent
    }
    

    open func setGameKey(_ gameKey: GameKey!) {
        self.gameKey = gameKey
    }
    

    @discardableResult open func getGameKey() -> GameKey! {
        return self.gameKey
    }
}

