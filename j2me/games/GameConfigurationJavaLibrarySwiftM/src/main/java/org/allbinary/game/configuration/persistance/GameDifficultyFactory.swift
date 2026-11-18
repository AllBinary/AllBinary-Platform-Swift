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

open class GameDifficultyFactory: JObject {
    fileprivate static let instance: GameDifficultyFactory! = GameDifficultyFactory()
    fileprivate var level: Int32 = 0

    private func initFields() {
    self.level = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameDifficultyFactory! {
        return GameDifficultyFactory.instance
    }
    

    open func setLevel(_ level: Int32) {
        self.level = level
    }
    

    @discardableResult open func getLevel() -> Int32 {
        return self.level
    }
}

