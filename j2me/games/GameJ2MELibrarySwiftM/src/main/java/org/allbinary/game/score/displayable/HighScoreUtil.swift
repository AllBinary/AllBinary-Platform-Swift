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
// package org.allbinary.game.score.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.GameInfo
// import org.allbinary.game.score.HighScore
// import org.allbinary.game.score.HighScoreNamePersistanceSingleton
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresHelperBaseInterface
// import org.allbinary.game.score.HighScoresResultsListener
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonStrings

open class HighScoreUtil: JObject, HighScoresResultsListener {
    public static let SUBMIT_TEXTBOX_COMMAND: Command! = Command("Submit", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var highScoresFactoryInterface: HighScoresFactoryInterface! = nil
    fileprivate var highScoresArray: JArray<HighScores?>! = nil
    fileprivate var highScore: HighScore! = nil
    fileprivate var abeClientInformation: AbeClientInformationInterface! = nil
    fileprivate var gameInfo: GameInfo! = nil
    fileprivate var highScoresHelper: HighScoresHelperBaseInterface! = nil
    fileprivate var firstTime: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    
    self.firstTime = true
    }
    

    public init(_ highScoresFactoryInterface: HighScoresFactoryInterface!, _ highScoresHelper: HighScoresHelperBaseInterface!, _ abeClientInformation: AbeClientInformationInterface!, _ gameInfo: GameInfo!, _ cmdListener: CommandListener!, _ name: String!, _ highScore: HighScore!) {
        super.init()
        self.initFields()
        self.highScoresFactoryInterface = highScoresFactoryInterface
        self.highScoresHelper = highScoresHelper
        self.highScoresArray = self.highScoresHelper.getHighScoresArray()
        self.highScore = highScore
        self.abeClientInformation = abeClientInformation
        self.gameInfo = gameInfo
    }
    

    open func setHighScoresArray(_ highScoresArray: JArray<HighScores?>!) {
        self.highScoresArray = highScoresArray
        self.firstTime = false
        self.saveHighScore()
    }
    

    open func update(_ name: String!) {
        HighScoreNamePersistanceSingleton.getInstance().save(self.abeClientInformation, self.gameInfo, name)
        self.highScore.setName(name)
    }
    

    open func saveHighScore() {
        self.logUtil.putF(StringMaker().append(self.commonStrings.START).append(StringUtil.getInstance().toString(self.highScore)).toString(), self, "saveHighScore")
        let size: Int32 = self.highScoresArray.length
        if (self.firstTime && size == 0) {
            self.logUtil.putF("Games canvas did not give us any HighScores", self, "saveHighScore")
            self.highScoresFactoryInterface.fetchHighScores(self.gameInfo, self)
            return
        }
        var highScores: HighScores! = nil
        var highScoresAsString: String! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            highScores = self.highScoresArray[index]
            highScores.addHighScore(self.highScore)
            highScoresAsString = highScores.toString()
            self.logUtil.putF(StringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), self, "saveHighScore")
            }
        }
        self.highScoresHelper.setHighScoresArray(self.highScoresArray)
    }
    

    open func submit(_ myCanvas: MyCanvas!) {
        let commandListener: CommandListener! = myCanvas.getCustomCommandListener()
        commandListener.commandAction(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas)
    }
}

