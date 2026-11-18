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
// import org.allbinary.logic.NullUtil

open class GameKeyMappingFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate var intKeyToGameKey: JArray<GameKey?>! = nil

    private func initFields() {
    self.intKeyToGameKey = JArray<GameKey?>(InputFactory.getInstance().MAX, nil)
    }
    

    @discardableResult open class func getInstance() -> GameKeyMappingFactory! {
        if (GameKeyMappingFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            GameKeyMappingFactory.instance = GameKeyMappingFactory()
        }
        return (GameKeyMappingFactory.instance as! GameKeyMappingFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let gameKeyFactory: GameKeyFactory! = GameKeyFactory.getInstance()
        self.setGameKey(gameKeyFactory.NONE)
        self.setGameKey(gameKeyFactory.UP)
        self.setGameKey(gameKeyFactory.DOWN)
        self.setGameKey(gameKeyFactory.LEFT)
        self.setGameKey(gameKeyFactory.RIGHT)
        self.setGameKey(gameKeyFactory.KEY_POUND)
        self.setGameKey(gameKeyFactory.KEY_STAR)
        self.setGameKey(gameKeyFactory.KEY_NUM0)
        self.setGameKey(gameKeyFactory.KEY_NUM1)
        self.setGameKey(gameKeyFactory.KEY_NUM2)
        self.setGameKey(gameKeyFactory.KEY_NUM3)
        self.setGameKey(gameKeyFactory.KEY_NUM4)
        self.setGameKey(gameKeyFactory.KEY_NUM5)
        self.setGameKey(gameKeyFactory.KEY_NUM6)
        self.setGameKey(gameKeyFactory.KEY_NUM7)
        self.setGameKey(gameKeyFactory.KEY_NUM8)
        self.setGameKey(gameKeyFactory.KEY_NUM9)
        self.setGameKey(gameKeyFactory.GAME_A)
        self.setGameKey(gameKeyFactory.GAME_B)
        self.setGameKey(gameKeyFactory.GAME_C)
        self.setGameKey(gameKeyFactory.GAME_D)
        self.setGameKey(gameKeyFactory.FIRE)
        self.setGameKey(gameKeyFactory.LEVEL_DOWN)
        self.setGameKey(gameKeyFactory.LEVEL_UP)
    }
    

    @discardableResult open func getGameKey(_ key: Int32) -> GameKey! {
        return self.intKeyToGameKey[key]
    }
    

    fileprivate func setGameKey(_ gameKey: GameKey!) {
        self.intKeyToGameKey[gameKey.getId()] = gameKey
    }
}

