/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

open class GamePersistanceStrings: JObject {
    fileprivate static let instance: GamePersistanceStrings! = GamePersistanceStrings()
    public var SAVED_GAME_RECORD_ID: String! = nil
    public var SAVED_GAME_CONFIGURATION_RECORD_ID: String! = nil
    public var DEFAULT_INPUT_MAPPING_RECORD_ID: String! = nil
    public var SAVED_INPUT_CONFIGURATION_RECORD_ID: String! = nil

    private func initFields() {
    self.SAVED_GAME_RECORD_ID = "_SG"
    self.SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
    self.DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
    self.SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GamePersistanceStrings! {
        return GamePersistanceStrings.instance
    }
}

