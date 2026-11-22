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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import org.allbinary.canvas.Processor
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresHelperBase
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.paint.NullPaintable

open class EndGameProcessor: Processor {
    public var gameStateFactory: GameStateFactory! = nil
    fileprivate var gameCanvas: AllBinaryGameCanvas! = nil
    fileprivate var WAIT: Int64 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.gameStateFactory = GameStateFactory.getInstance()
    
    self.WAIT = 5000
    }
    

    public init(_ gameCanvas: AllBinaryGameCanvas!) {
        super.init()
        self.initFields()
        self.gameCanvas = gameCanvas
    }
    

    open override func process() {
        if (self.gameCanvas.isHighScoreSubmitted()) {
            if (self.gameCanvas.getGameStateTimeHelper().isElapsedTNT(self.WAIT)) {
                if (self.gameCanvas.getGameState() === self.gameStateFactory.SHOW_END_RESULT_GAME_STATE) {
                    let highScoresBase: HighScoresHelperBase! = (self.gameCanvas.highScoresHelper as! HighScoresHelperBase)
                    let highScores: HighScores! = highScoresBase.getSelectedHighScores()
                    if (highScores !== NullHighScoresSingletonFactory.getInstance()) {
                        highScoresBase.selectHighScores()
                        self.gameCanvas.getRealHighScoresPaintable().setHighScores(highScores)
                        self.gameCanvas.setGameState(self.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)
                        self.gameCanvas.setHighScoresPaintable(self.gameCanvas.getRealHighScoresPaintable())
                    }
                } else if (self.gameCanvas.getGameState() === self.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
                    self.gameCanvas.setGameState(self.gameStateFactory.SHOW_END_RESULT_GAME_STATE)
                    self.gameCanvas.setHighScoresPaintable(NullPaintable.getInstance())
                }
            }
        }
    }
}

