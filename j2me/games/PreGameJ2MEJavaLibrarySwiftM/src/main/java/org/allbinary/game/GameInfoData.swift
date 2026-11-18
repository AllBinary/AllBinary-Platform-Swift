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

open class GameInfoData: JObject {
    fileprivate static let instance: GameInfoData! = GameInfoData()
    public var GAME_TYPE: String! = nil
    public var GAME_MODE: String! = nil
    public var PLAYER_TYPE: String! = nil
    public var HIGHEST_LEVEL: String! = nil
    public var CURRENT_LEVEL: String! = nil
    public var SOFTWARE_INFORMATION: String! = nil

    private func initFields() {
    self.GAME_TYPE = "GAME_TYPE"
    self.GAME_MODE = "GAME_MODE"
    self.PLAYER_TYPE = "PLAYER_TYPE"
    self.HIGHEST_LEVEL = "HIGHEST_LEVEL"
    self.CURRENT_LEVEL = "CURRENT_LEVEL"
    self.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION"
    }
    

    @discardableResult open class func getInstance() -> GameInfoData! {
        return GameInfoData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

