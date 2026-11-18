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
// package org.allbinary.game.configuration.event

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.GameConfiguration

open class ChangedGameFeatureListener: BaseChangedGameFeatureListener {
    fileprivate static let gameFeatureListener: ChangedGameFeatureListener! = ChangedGameFeatureListener()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> ChangedGameFeatureListener! {
        return ChangedGameFeatureListener.gameFeatureListener
    }
    

    @discardableResult open func isChangedGameConfiguration(_ gameConfiguration: GameConfiguration!) -> Bool {
        return self.list.contains(gameConfiguration)
    }
}

