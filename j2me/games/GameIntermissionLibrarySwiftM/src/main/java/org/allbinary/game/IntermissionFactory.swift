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
// package org.allbinary.game

import J2SEForSwiftLibrary
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory

open class IntermissionFactory: JObject {
    fileprivate static let instance: IntermissionFactory! = IntermissionFactory()
    public var START_LEVEL_INTERMISSION_GAME_STATE: GameState! = nil
    public var WAIT_LEVEL_INTERMISSION_GAME_STATE: GameState! = nil
    public var SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE: GameState! = nil
    public var SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE: GameState! = nil

    private func initFields() {
    self.START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE")
    self.WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE")
    self.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")
    self.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> IntermissionFactory! {
        return IntermissionFactory.instance
    }
}

