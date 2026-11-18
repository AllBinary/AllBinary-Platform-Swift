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

open class BasicHighScoresGameInfoFactory: JObject {
    fileprivate static let SINGLETON: BasicHighScoresGameInfoFactory! = BasicHighScoresGameInfoFactory()
    public var MULTI_PLAYER_SERVER: GameInfo! = nil
    public var SINGLE_PLAYER_SERVER: GameInfo! = nil

    private func initFields() {
    self.MULTI_PLAYER_SERVER = GameInfo(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
    self.SINGLE_PLAYER_SERVER = GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BasicHighScoresGameInfoFactory! {
        return BasicHighScoresGameInfoFactory.SINGLETON
    }
}

