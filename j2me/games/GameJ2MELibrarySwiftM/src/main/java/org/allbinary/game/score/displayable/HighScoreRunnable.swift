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
// import org.allbinary.J2MEUtil
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ARunnable

open class HighScoreRunnable: ARunnable {
    public var highScoresCanvas: HighScoresCanvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ highScoresCanvas: HighScoresCanvas!) {
        super.init()
        self.initFields()
        self.highScoresCanvas = highScoresCanvas
    }
    

    open override func run() {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let logUtil: LogUtil! = LogUtil.getInstance()
        let highScoresCanvas: HighScoresCanvas! = self.highScoresCanvas
        do {
            let isHTML: Bool = J2MEUtil.isHTML()
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
                highScoresCanvas.hasPainted = false
            }
            let stringMaker: StringMaker! = StringMaker()
            let systemWrapper: ABSystemWrapper! = ABSystemWrapper.getInstance()
            let currentTimeMillis: Int64 = systemWrapper.currentTimeMillis()
            logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).toString(), self, commonStrings.RUN)
            highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas)
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
            }
            stringMaker.delete(0, stringMaker.length())
            logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).toString(), self, commonStrings.RUN)
            highScoresCanvas.executeUpdate()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

