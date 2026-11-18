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
// package org.allbinary.game.configuration

import J2SEForSwiftLibrary
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GameConfigurationSingleton: JObject {
    fileprivate static var SINGLETON: GameConfigurationSingleton! = GameConfigurationSingleton()
    fileprivate var list: BasicArrayList! = nil
    fileprivate var hashtable: ABHashtable! = nil

    private func initFields() {
    
    
    }
    

    @discardableResult open class func getInstance() -> GameConfigurationSingleton! {
        return GameConfigurationSingleton.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
        self.list = BasicArrayListD()
        self.hashtable = StdUtil.getInstance().createHashtable()
    }
    

    @discardableResult open func getInstanceByName(_ name: String!) -> GameConfiguration! {
        return (self.hashtable.get(jBoxString(name)) as! GameConfiguration)
    }
    

    @discardableResult open func getOptionsBasicArrayList() -> BasicArrayList! {
        return self.list
    }
    

    open func add(_ gameConfiguration: GameConfiguration!) {
        self.list.add(gameConfiguration)
    }
    

    @discardableResult open func getHashtable() -> ABHashtable! {
        return self.hashtable
    }
}

