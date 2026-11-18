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

open class HighScoresHelper: HighScoresHelperBase {
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    public var lastIndex: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
    self.lastIndex = -1
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func setHighScoresArray(_ highScoresArrayP: JArray<HighScores?>!) {
        super.setHighScoresArray(highScoresArrayP)
        self.circularIndexUtil.setSize(self.highScoresArrayP.length)
    }
    

    @discardableResult open override func getNextHighScores() -> HighScores! {
        var highScores: HighScores! = self.highScoresArrayP[self.circularIndexUtil.getIndex()]
        var index: Int32 = 0
        while ((highScores.getTotal() < 1 || self.lastIndex == self.circularIndexUtil.getIndex()) && index < self.highScoresArrayP.length) {
            self.circularIndexUtil.next()
            highScores = self.highScoresArrayP[self.circularIndexUtil.getIndex()]
            index &+= 1
        }
        self.lastIndex = self.circularIndexUtil.getIndex()
        return highScores
    }
    

    @discardableResult open override func isAnyHighScores() -> Bool {
        if (self.highScoresArrayP.length < 1) {
            return false
        }
        var anyScores: Bool = false
        var highScores: HighScores! = nil
        do {
            var index: Int32 = self.highScoresArrayP.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            highScores = self.highScoresArrayP[index]
            if (highScores.getTotal() > 0) {
                anyScores = true
            }
            }
        }
        return anyScores
    }
}

