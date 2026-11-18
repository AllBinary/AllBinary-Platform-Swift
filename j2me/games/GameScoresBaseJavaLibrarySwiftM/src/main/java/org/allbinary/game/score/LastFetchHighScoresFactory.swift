/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.logic.NullUtil

open class LastFetchHighScoresFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var highScoresArray: JArray<HighScores?>! = nil

    private func initFields() {
    self.highScoresArray = NoHighScoresFactory.getInstance().NO_HIGH_SCORES
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LastFetchHighScoresFactory! {
        if (LastFetchHighScoresFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            LastFetchHighScoresFactory.instance = LastFetchHighScoresFactory()
        }
        return (LastFetchHighScoresFactory.instance as! LastFetchHighScoresFactory)
    }
}

