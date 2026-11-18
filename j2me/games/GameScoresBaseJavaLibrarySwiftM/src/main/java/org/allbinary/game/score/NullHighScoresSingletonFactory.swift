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
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import org.allbinary.string.CommonStrings

open class NullHighScoresSingletonFactory: JObject {
    fileprivate static let SINGLETON: HighScores! = HighScores(CommonStrings.getInstance().LOADING, "High Scores Not Loaded", CommonStrings.getInstance().PERIODS)

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> HighScores! {
        return NullHighScoresSingletonFactory.SINGLETON
    }
}

