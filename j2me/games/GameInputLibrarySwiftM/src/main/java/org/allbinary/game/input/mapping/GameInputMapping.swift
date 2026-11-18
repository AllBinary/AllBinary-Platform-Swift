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
// package org.allbinary.game.input.mapping

import J2SEForSwiftLibrary
// import org.allbinary.game.input.GameKey
// import org.allbinary.logic.string.StringUtil

open class GameInputMapping: JObject {
    fileprivate var name: String! = nil
    fileprivate var gameKey: GameKey! = nil

    private func initFields() {
    self.name = StringUtil.getInstance().EMPTY_STRING
    self.gameKey = GameKey.NULL_GAME_KEY
    }
    

    public init(_ name: String!, _ gameKey: GameKey!) {
        super.init()
        self.initFields()
        self.setName(name)
        self.setGameKey(gameKey)
    }
    

    fileprivate func setGameKey(_ gameKey: GameKey!) {
        self.gameKey = gameKey
    }
    

    @discardableResult open func getGameKey() -> GameKey! {
        return self.gameKey
    }
    

    fileprivate func setName(_ name: String!) {
        self.name = name
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
}

