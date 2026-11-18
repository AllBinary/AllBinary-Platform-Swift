// Generated Code Do Not Modify
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import org.allbinary.game.GameInfo
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.system.SoftwareInformation
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

open class BasicHighScoresFactory: HighScoresBase {
    public var logUtil: LogUtil! = nil
    fileprivate var abeClientInformation: AbeClientInformationInterface! = nil
    fileprivate var highScoresArray: JArray<HighScores?>! = nil
    fileprivate var TOP: String! = nil
    fileprivate var SCORES: String! = nil
    fileprivate var PERSONAL_HIGH_SCORES: String! = nil
    fileprivate var FETCH: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    self.highScoresArray = JArray<HighScores?>(1, nil)
    self.TOP = "Top"
    self.SCORES = "Scores"
    self.PERSONAL_HIGH_SCORES = "Personal Top Scores"
    self.FETCH = "fetchHighScores"
    }
    

    public init(_ abeClientInformation: AbeClientInformationInterface!, _ softwareInformation: SoftwareInformation!) {
        super.init()
        self.initFields()
        self.abeClientInformation = abeClientInformation
    }
    

    open override func fetchHighScores(_ gameInfo: GameInfo!, _ highScoresResultsListener: HighScoresResultsListener!) {
        self.logUtil.putF("Getting Local HighScores", self, self.FETCH)
        self.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    }
    

    open override func fetchHighScoresPreload(_ gameInfo: GameInfo!, _ highScoresResultsListener: HighScoresResultsListener!, _ preload: Bool) {
        do {
            self.highScoresArray[0] = RecordStoreHighScores.getInstance(self.abeClientInformation, gameInfo, self.TOP, self.PERSONAL_HIGH_SCORES, self.SCORES, ScoreComparator(true))
            highScoresResultsListener.setHighScoresArray(self.highScoresArray)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open override func createHighScoresHelper() -> HighScoresHelperBaseInterface! {
        return HighScoresHelper2()
    }
    

    @discardableResult open class func loaded(_ index2: Int32) -> Bool {
        if (index2 >= 0) {
            return true
        }
        return false
    }
}

