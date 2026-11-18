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
// package org.allbinary.game.state

import J2SEForSwiftLibrary
// import org.allbinary.logic.NullUtil

open class GameStateFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate var index: Int32 = 0
    public var NO_GAME_STATE: GameState! = nil
    public var PLAYING_GAME_STATE: GameState! = nil
    public var SHOW_END_RESULT_GAME_STATE: GameState! = nil
    public var SHOW_HIGH_SCORE_GAME_STATE: GameState! = nil

    private func initFields() {
    self.index = 0
    self.NO_GAME_STATE = self.createGameState("NO_GAME_STATE")
    self.PLAYING_GAME_STATE = self.createGameState("PLAYING_GAME_STATE")
    self.SHOW_END_RESULT_GAME_STATE = self.createGameState("SHOW_END_RESULT_GAME_STATE")
    self.SHOW_HIGH_SCORE_GAME_STATE = self.createGameState("SHOW_HIGH_SCORE_GAME_STATE")
    }
    

    @discardableResult open class func getInstance() -> GameStateFactory! {
        if (GameStateFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            GameStateFactory.instance = GameStateFactory()
        }
        return (GameStateFactory.instance as! GameStateFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func createGameState(_ name: String!) -> GameState! {
        return GameState(name, jPostIncrement(&self.index))
    }
}

