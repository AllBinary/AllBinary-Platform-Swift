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
// package org.allbinary.game.configuration.persistance

import J2SEForSwiftLibrary

open class GamePersistanceSingleton: KeyValuePersistance {
    fileprivate static var GAME_PERSISTANCE: GamePersistanceSingleton! = GamePersistanceSingleton()
    

    @discardableResult open class func getInstance() -> GamePersistanceSingleton! {
        return GamePersistanceSingleton.GAME_PERSISTANCE
    }
    

    public init() {
        super.init(GamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID)
    }
}

