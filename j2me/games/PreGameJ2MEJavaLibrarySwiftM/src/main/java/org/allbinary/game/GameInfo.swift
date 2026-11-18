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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.logic.StdUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.ABHashtable

open class GameInfo: JObject {
    public static let NONE: GameInfo! = GameInfo(GameTypeFactory.getInstance().NONE, GameMode.NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1)
    public static let LEVEL_NAME: String! = "LEVEL"
    public var logUtil: LogUtil! = nil
    fileprivate var gameInfoData: GameInfoData! = nil
    fileprivate var gameType: GameType! = nil
    fileprivate var gameMode: GameMode! = nil
    fileprivate var playerType: PlayerType! = nil
    fileprivate var highestLevel: Int32 = 0
    fileprivate var currentLevel: Int32 = 0
    fileprivate var NEW_LEVEL: String! = nil
    fileprivate var SET_CURRENT_LEVEL: String! = nil
    fileprivate var NEXT_GAME_LEVEL: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.gameInfoData = GameInfoData.getInstance()
    
    
    
    self.highestLevel = 0
    
    self.NEW_LEVEL = "New Level: "
    self.SET_CURRENT_LEVEL = "setCurrentLevel"
    self.NEXT_GAME_LEVEL = "nextGameLevel"
    }
    

    public init(_ gameType: GameType!, _ gameMode: GameMode!, _ playerType: PlayerType!, _ highestLevel: Int32, _ currentLevel: Int32) {
        super.init()
        self.initFields()
        self.gameType = gameType
        self.gameMode = gameMode
        self.setHighestLevel(highestLevel)
        self.currentLevel = currentLevel
        self.playerType = playerType
    }
    

    @discardableResult open func getGameType() -> GameType! {
        return self.gameType
    }
    

    @discardableResult open func getGameMode() -> GameMode! {
        return self.gameMode
    }
    

    @discardableResult open func getPlayerType() -> PlayerType! {
        return self.playerType
    }
    

    @discardableResult open func getHighestLevel() -> Int32 {
        return self.highestLevel
    }
    

    open func setHighestLevel(_ highestLevel: Int32) {
        self.highestLevel = highestLevel
    }
    

    @discardableResult open func getCurrentLevel() -> Int32 {
        return self.currentLevel
    }
    

    open func setCurrentLevel(_ currentLevel: Int32) {
        self.currentLevel = currentLevel
        self.logUtil.putF(StringMaker().append(self.NEW_LEVEL).appendint(self.getCurrentLevel()).toString(), self, self.SET_CURRENT_LEVEL)
    }
    

    open func nextGameLevel() {
        if (self.getCurrentLevel() < self.getHighestLevel()) {
            self.currentLevel &+= 1
        }
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(self.NEW_LEVEL).appendint(self.getCurrentLevel()).toString(), self, self.NEXT_GAME_LEVEL)
    }
    

    open func previousGameLevel() {
        if (self.getCurrentLevel() > 1) {
            self.currentLevel &-= 1
        }
    }
    

    @discardableResult open func isLastLevel() -> Bool {
        if (self.getCurrentLevel() >= self.getHighestLevel()) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func toHashtable() -> ABHashtable! {
        let hashtable: ABHashtable! = StdUtil.getInstance().createHashtable()
        hashtable.put(jBoxString(self.gameInfoData.GAME_TYPE), jBoxString(self.getGameType().toString()))
        hashtable.put(jBoxString(self.gameInfoData.GAME_MODE), jBoxString(self.gameMode.toString()))
        hashtable.put(jBoxString(self.gameInfoData.PLAYER_TYPE), jBoxString(self.playerType.toString()))
        hashtable.put(jBoxString(self.gameInfoData.HIGHEST_LEVEL), jBoxString(jstr(self.getHighestLevel())))
        hashtable.put(jBoxString(self.gameInfoData.CURRENT_LEVEL), jBoxString(jstr(self.currentLevel)))
        return hashtable
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        stringBuffer.append(self.gameInfoData.GAME_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(self.getGameType().toString())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(self.gameInfoData.GAME_MODE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(self.gameMode.toString())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(self.gameInfoData.PLAYER_TYPE)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.append(StringUtil.getInstance().toString(self.playerType))
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(self.gameInfoData.HIGHEST_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(self.getHighestLevel())
        stringBuffer.append(commonSeps.COMMA_SEP)
        stringBuffer.append(self.gameInfoData.CURRENT_LEVEL)
        stringBuffer.append(commonSeps.EQUALS)
        stringBuffer.appendint(self.currentLevel)
        return stringBuffer.toString()
    }
}

