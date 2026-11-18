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
// import org.allbinary.game.GameInfo
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.string.StringUtil

open class EndGameInfo: JObject {
    public var NORMAL_GAME_OVER_WIN: String! = nil
    fileprivate var TEASER_DEMO_GAME_END_LAST_LEVEL: String! = nil
    fileprivate var TEASER_DEMO_GAME_END: String! = nil
    fileprivate var gameOverStr: String! = nil
    fileprivate var winStr: String! = nil

    private func initFields() {
    self.NORMAL_GAME_OVER_WIN = "You Won"
    self.TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo."
    self.TEASER_DEMO_GAME_END = "Demo Game Over."
    self.gameOverStr = StringUtil.getInstance().EMPTY_STRING
    self.winStr = self.gameOverStr
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    public func update(_ gameInfo: GameInfo!, _ myCanvas: MyCanvas!) {
        if (gameInfo.isLastLevel()) {
            self.setWinStr(self.TEASER_DEMO_GAME_END_LAST_LEVEL)
            self.setGameOverStr(self.TEASER_DEMO_GAME_END_LAST_LEVEL)
        } else {
            self.setWinStr(self.NORMAL_GAME_OVER_WIN)
            self.setGameOverStr(self.TEASER_DEMO_GAME_END)
        }
    }
    

    @discardableResult open func getGameOverStr() -> String! {
        return self.gameOverStr
    }
    

    open func setGameOverStr(_ gameOverStr: String!) {
        self.gameOverStr = gameOverStr
    }
    

    @discardableResult open func getWinStr() -> String! {
        return self.winStr
    }
    

    open func setWinStr(_ winStr: String!) {
        self.winStr = winStr
    }
}

