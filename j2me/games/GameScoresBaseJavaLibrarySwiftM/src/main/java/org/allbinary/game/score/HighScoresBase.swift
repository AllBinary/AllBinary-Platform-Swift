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
// import org.allbinary.string.CommonStrings

open class HighScoresBase: JObject, HighScoresFactoryInterface {
    public var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func fetchHighScores(_ gameInfo: GameInfo!, _ highScoresResultsListener: HighScoresResultsListener!) {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func fetchHighScoresPreload(_ gameInfo: GameInfo!, _ highScoresResultsListener: HighScoresResultsListener!, _ preload: Bool) {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func createHighScoresHelper() -> HighScoresHelperBaseInterface! {
        jThrow(JException("RuntimeException", ""))
    }
}

