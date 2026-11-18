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

open class GameInfoCopyFactory: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstanceMaxLevel(_ gameInfo: GameInfo!, _ maxLevel: Int32) -> GameInfo! {
        return GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), gameInfo.getPlayerType(), maxLevel, gameInfo.getCurrentLevel())
    }
    

    @discardableResult open class func getInstance(_ gameInfo: GameInfo!) -> GameInfo! {
        return GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), gameInfo.getPlayerType(), gameInfo.getHighestLevel(), gameInfo.getCurrentLevel())
    }
}

