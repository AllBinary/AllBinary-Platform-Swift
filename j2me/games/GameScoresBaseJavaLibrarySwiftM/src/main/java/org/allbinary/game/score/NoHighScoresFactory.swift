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
// import org.allbinary.game.GameInfo
// import org.allbinary.logic.communication.log.LogUtil

open class NoHighScoresFactory: HighScoresBase {
    fileprivate static let instance: NoHighScoresFactory! = NoHighScoresFactory()
    public var logUtil: LogUtil! = nil
    public var NO_HIGH_SCORES: JArray<HighScores?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.NO_HIGH_SCORES = JArray<HighScores?>(0, nil)
    }
    

    @discardableResult open class func getInstance() -> NoHighScoresFactory! {
        return NoHighScoresFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func fetchHighScores(_ gameInfo: GameInfo!, _ highScoresResultsListener: HighScoresResultsListener!) {
        self.logUtil.putF("Getting No HighScores", self, "fetchHighScores")
        highScoresResultsListener.setHighScoresArray(self.NO_HIGH_SCORES)
    }
    

    @discardableResult open override func createHighScoresHelper() -> HighScoresHelperBaseInterface! {
        return HighScoresHelperBase()
    }
}

