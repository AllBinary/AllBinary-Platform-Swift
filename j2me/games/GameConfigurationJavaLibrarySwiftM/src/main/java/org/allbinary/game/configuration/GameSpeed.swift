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

open class GameSpeed: JObject {
    fileprivate static let instance: GameSpeed! = GameSpeed()

    public override init() {
        super.init()
    }
    

    @discardableResult public func getSpeed() -> Int32 {
        let speedGameConfiguration: GameConfiguration! = GameConfigurationCentral.getInstance().SPEED
        return (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue() + 1)
    }
    

    @discardableResult public func getDelay() -> Int32 {
        let speedGameConfiguration: GameConfiguration! = GameConfigurationCentral.getInstance().SPEED
        return 19 * (speedGameConfiguration.getMaxValue().intValue() - speedGameConfiguration.getValue().intValue())
    }
    

    @discardableResult open class func getInstance() -> GameSpeed! {
        return GameSpeed.instance
    }
}

