/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringUtil

open class RemoteInfo: JObject {
    public static let NEW_PLAYER_ID: Int32 = 0
    public static let REMOTE_INFO: RemoteInfo! = RemoteInfo(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo.NEW_PLAYER_ID)
    

    public init(_ username: String!, _ actorSessionId: Int32, _ playerInputId: Int32, _ id: Int32) {
        super.init()
    }
}

