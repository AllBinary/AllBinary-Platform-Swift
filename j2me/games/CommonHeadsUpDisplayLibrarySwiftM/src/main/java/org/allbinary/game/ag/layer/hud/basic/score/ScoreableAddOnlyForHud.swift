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
// package org.allbinary.game.ag.layer.hud.basic.score

import J2SEForSwiftLibrary
// import org.allbinary.game.score.Scoreable

open class ScoreableAddOnlyForHud: Scoreable {
    fileprivate var scoreHudWidget: ScoreHudWidget! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ scoreVectorGraphic: ScoreHudWidget!) {
        super.init(0)
        self.initFields()
        self.scoreHudWidget = scoreVectorGraphic
        self.getScoreHudWidget().set(0)
    }
    

    open override func removePoints(_ points: Int32) {
    }
    

    open override func addPoints(_ points: Int32) {
        super.addPoints(points)
        self.getScoreHudWidget().add(points)
    }
    

    @discardableResult open func getScoreHudWidget() -> ScoreHudWidget! {
        return self.scoreHudWidget
    }
}

