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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class HighScoresHelperBase: JObject, HighScoresHelperBaseInterface {
    public var logUtil: LogUtil! = nil
    public var highScoresArrayP: JArray<HighScores?>! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setHighScoresArray(_ highScoresArrayP: JArray<HighScores?>!) {
        if (highScoresArrayP != nil) {
            let commonStrings: CommonStrings! = CommonStrings.getInstance()
            self.logUtil.putF(StringMaker().append(commonStrings.START).appendint(highScoresArrayP.length).toString(), self, "setHighScoresArray")
        } else {
            let commonStrings: CommonStrings! = CommonStrings.getInstance()
            self.logUtil.putF(commonStrings.START, self, "setHighScoresArray")
        }
        self.highScoresArrayP = highScoresArrayP
    }
    

    @discardableResult open func getNextHighScores() -> HighScores! {
        return NullHighScoresSingletonFactory.getInstance()
    }
    

    @discardableResult open func isAnyHighScores() -> Bool {
        jThrow(JException("RuntimeException", ""))
    }
    

    open func setSelectedHighScores(_ selectedHighScores: HighScores!) {
    }
    

    @discardableResult open func getSelectedHighScores() -> HighScores! {
        return NullHighScoresSingletonFactory.getInstance()
    }
    

    @discardableResult open func getHighScoresArray() -> JArray<HighScores?>! {
        return self.highScoresArrayP
    }
    

    open func selectHighScores() {
    }
}

