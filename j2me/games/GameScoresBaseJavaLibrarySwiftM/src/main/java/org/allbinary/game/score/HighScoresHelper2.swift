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
// import org.allbinary.util.CircularIndexUtil

open class HighScoresHelper2: HighScoresHelperBase {
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var selectedHighScores: HighScores! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
    self.selectedHighScores = NullHighScoresSingletonFactory.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func setSelectedHighScores(_ selectedHighScores: HighScores!) {
        self.selectedHighScores = selectedHighScores
    }
    

    @discardableResult open override func getSelectedHighScores() -> HighScores! {
        return self.selectedHighScores
    }
    

    open override func setHighScoresArray(_ highScoresArrayP: JArray<HighScores?>!) {
        super.setHighScoresArray(highScoresArrayP)
        self.circularIndexUtil.setSize(self.highScoresArrayP.length)
        self.selectHighScores()
    }
    

    open override func selectHighScores() {
        if (self.highScoresArrayP.length == 0) {
            self.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
            return
        }
        self.circularIndexUtil.next()
        var highScores: HighScores! = self.highScoresArrayP[self.circularIndexUtil.getIndex()]
        var index: Int32 = 0
        while (highScores.getTotal() < 1 && index < self.highScoresArrayP.length) {
            highScores = self.highScoresArrayP[self.circularIndexUtil.next()]
            index &+= 1
        }
        self.setSelectedHighScores(highScores)
    }
}

