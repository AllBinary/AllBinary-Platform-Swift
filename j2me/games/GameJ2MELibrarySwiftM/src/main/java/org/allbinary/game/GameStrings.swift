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
// package org.allbinary.game

import J2SEForSwiftLibrary

open class GameStrings: JObject {
    fileprivate static let instance: GameStrings! = GameStrings()
    public var PROCESS_TICK: String! = nil
    public var ON_GAME_INITIALIZED: String! = nil
    public var UPDATESURFACE: String! = nil
    public var ON_SET_DISPLAYABLE: String! = nil
    public var UNPAUSE: String! = nil
    public var TOGGLE_MENU: String! = nil
    public var SET_GAME_OVER: String! = nil
    public var GAME_STATE: String! = nil
    public var SET_GAME_STATE: String! = nil
    public var STOP_GAME_CANVAS_RUNNABLE_INTERFACE: String! = nil

    private func initFields() {
    self.PROCESS_TICK = "processTick"
    self.ON_GAME_INITIALIZED = "onGameInitialized"
    self.UPDATESURFACE = "updateSurface"
    self.ON_SET_DISPLAYABLE = "onSetDisplayable"
    self.UNPAUSE = "unPause"
    self.TOGGLE_MENU = "toggleMenu"
    self.SET_GAME_OVER = "setGameOver"
    self.GAME_STATE = "Game State: "
    self.SET_GAME_STATE = "setGameState"
    self.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameStrings! {
        return GameStrings.instance
    }
}

