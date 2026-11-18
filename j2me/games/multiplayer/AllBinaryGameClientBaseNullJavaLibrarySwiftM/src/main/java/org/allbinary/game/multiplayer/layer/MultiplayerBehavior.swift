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
// package org.allbinary.game.multiplayer.layer

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class MultiplayerBehavior: JObject {
    public static let NULL_MULTIPLAYER_BEHAVIOR: MultiplayerBehavior! = MultiplayerBehavior(StringUtil.getInstance().EMPTY_STRING)
    

    public init(_ username: String!) {
        super.init()
    }
    

    open func startTick() {
    }
    

    open func endTick() {
    }
    

    @discardableResult open func getApproximateElapsed() -> Int64 {
        return 0
    }
}

