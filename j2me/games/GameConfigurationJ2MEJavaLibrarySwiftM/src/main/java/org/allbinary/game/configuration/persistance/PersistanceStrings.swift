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

open class PersistanceStrings: JObject {
    fileprivate static let instance: PersistanceStrings! = PersistanceStrings()
    public var SAVING: String! = nil
    public var NUMBER_OF_RECORDS: String! = nil
    public var LOADING_ID: String! = nil
    public var LOAD_ALL: String! = nil
    public var DELETING_WITH_ID: String! = nil
    public var CLOSING_RECORDSTORE: String! = nil
    public var NOT_SAVING: String! = nil
    public var ERROR_LOADING: String! = nil
    public var ERROR_LOADING_ID: String! = nil
    public var ID: String! = nil
    public var GAME_ACTION_INPUT: String! = nil

    private func initFields() {
    self.SAVING = "Saving: "
    self.NUMBER_OF_RECORDS = "Number of records: "
    self.LOADING_ID = "Loading data with id: "
    self.LOAD_ALL = "loadAll"
    self.DELETING_WITH_ID = "Deleting data with id: "
    self.CLOSING_RECORDSTORE = "Closing RecordStore"
    self.NOT_SAVING = "Not Saving: "
    self.ERROR_LOADING = "Error Loading gameActionInput: "
    self.ERROR_LOADING_ID = "Error Loading id: "
    self.ID = " id: "
    self.GAME_ACTION_INPUT = " GameActionInput: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PersistanceStrings! {
        return PersistanceStrings.instance
    }
}

