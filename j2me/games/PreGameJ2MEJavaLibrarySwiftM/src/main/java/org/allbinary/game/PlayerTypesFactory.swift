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

open class PlayerTypesFactory: JObject {
    fileprivate static let SINGLETON: PlayerTypesFactory! = PlayerTypesFactory()
    public var PLAYER_TYPE_ONE: PlayerType! = nil
    public var PLAYER_TYPE_TWO: PlayerType! = nil
    public var PLAYER_TYPE_THREE: PlayerType! = nil

    private func initFields() {
    self.PLAYER_TYPE_ONE = PlayerType("Player Type One", 0)
    self.PLAYER_TYPE_TWO = PlayerType("Player Type Two", 1)
    self.PLAYER_TYPE_THREE = PlayerType("Player Type Three", 2)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PlayerTypesFactory! {
        return PlayerTypesFactory.SINGLETON
    }
}

