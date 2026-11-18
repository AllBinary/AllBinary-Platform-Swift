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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class GameKey: Input {
    public static let NULL_GAME_KEY: GameKey! = GameKey(-1, StringUtil.getInstance().NULL_STRING)
    

    public override init(_ key: Int32, _ name: String!) {
        super.init(key, name)
    }
    

    @discardableResult open override func toString() -> String! {
        return StringMaker().append("GameKey ").append(super.toString()).toString()
    }
}

