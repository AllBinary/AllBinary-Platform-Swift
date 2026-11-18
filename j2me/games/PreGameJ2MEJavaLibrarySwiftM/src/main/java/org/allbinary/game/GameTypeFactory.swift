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
// import org.allbinary.logic.string.StringUtil

open class GameTypeFactory: JObject {
    fileprivate static let instance: GameTypeFactory! = GameTypeFactory()
    public var NULL_GAME_TYPE_ARRAY: JArray<GameType?>! = nil
    public var NONE: GameType! = nil
    public var SINGLE_PLAYER: GameType! = nil
    public var MULTI_PLAYER: GameType! = nil
    public var BOT: GameType! = nil

    private func initFields() {
    self.NULL_GAME_TYPE_ARRAY = JArray<GameType?>(0, nil)
    self.NONE = GameType(StringUtil.getInstance().NULL_STRING)
    self.SINGLE_PLAYER = GameType("Single Player")
    self.MULTI_PLAYER = GameType("Multi Player")
    self.BOT = GameType("Artificial Player")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameTypeFactory! {
        return GameTypeFactory.instance
    }
}

