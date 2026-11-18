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
// package org.allbinary.game.input

import J2SEForSwiftLibrary

open class GameInputStrings: JObject {
    fileprivate static let instance: GameInputStrings! = GameInputStrings()
    public var PROCESS_INPUT: String! = nil
    public var KEY_PRESSED: String! = nil
    public var KEY_RELEASED: String! = nil
    public var KEY_REPEATED: String! = nil
    public var ON_PRESS_GAME_KEY: String! = nil
    public var ON_DOWN_GAME_KEY: String! = nil
    public var ON_UP_GAME_KEY: String! = nil
    public var NO_KEY: String! = nil
    public var ADD_KEY_EVENT: String! = nil
    public var REMOVE_KEY_EVENT: String! = nil
    public var STRAFE_LEFT: String! = nil
    public var STRAFE_RIGHT: String! = nil
    public var PROCESS_MOTION_INPUT: String! = nil
    public var UDPATE_CURRENT_TOUCH_INPUT_FACTORY: String! = nil
    public var ENABLE_PLAYER_GAME_INPUTS: String! = nil
    public var ENABLE_PLAYER_GAME_INPUT: String! = nil

    private func initFields() {
    self.PROCESS_INPUT = "processInput"
    self.KEY_PRESSED = "keyPressed"
    self.KEY_RELEASED = "keyReleased"
    self.KEY_REPEATED = "keyRepeated"
    self.ON_PRESS_GAME_KEY = "onPressGameKeyEvent"
    self.ON_DOWN_GAME_KEY = "onDownGameKeyEvent"
    self.ON_UP_GAME_KEY = "onUpGameKeyEvent"
    self.NO_KEY = "Key Code Not Mapped For Game: "
    self.ADD_KEY_EVENT = "addGameKeyEvent"
    self.REMOVE_KEY_EVENT = "removeGameKeyEvent"
    self.STRAFE_LEFT = "strafeLeft"
    self.STRAFE_RIGHT = "strafeRight"
    self.PROCESS_MOTION_INPUT = "processMotionInput"
    self.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory"
    self.ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: "
    self.ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameInputStrings! {
        return GameInputStrings.instance
    }
}

