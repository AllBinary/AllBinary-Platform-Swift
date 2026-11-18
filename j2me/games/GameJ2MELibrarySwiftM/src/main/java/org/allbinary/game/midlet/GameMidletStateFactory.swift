// Generated Code Do Not Modify
// package org.allbinary.game.midlet

import J2SEForSwiftLibrary
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels

open class GameMidletStateFactory: JObject {
    fileprivate static let INSTANCE: GameMidletStateFactory! = GameMidletStateFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var currentGameState: GameState! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.currentGameState = GameStateFactory.getInstance().NO_GAME_STATE
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameMidletStateFactory! {
        return GameMidletStateFactory.INSTANCE
    }
    

    @discardableResult open func getCurrentGameState() -> GameState! {
        return self.currentGameState
    }
    

    open func setCurrentGameState(_ currentGameState: GameState!) {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString(currentGameState)).toString(), self, "setCurrentGameState")
        self.currentGameState = currentGameState
    }
}

