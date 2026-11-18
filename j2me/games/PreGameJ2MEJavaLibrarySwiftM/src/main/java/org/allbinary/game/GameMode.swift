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

open class GameMode: JObject {
    public static var NONE: GameMode! = GameMode(StringUtil.getInstance().NULL_STRING)
    public static var SERVER: GameMode! = GameMode("Server")
    public static var CLIENT: GameMode! = GameMode("Client")
    fileprivate var name: String! = nil

    private func initFields() {
    self.name = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ name: String!) {
        super.init()
        self.initFields()
        self.setName(name)
    }
    

    fileprivate func setName(_ name: String!) {
        self.name = name
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open override func toString() -> String! {
        return self.getName()
    }
}

