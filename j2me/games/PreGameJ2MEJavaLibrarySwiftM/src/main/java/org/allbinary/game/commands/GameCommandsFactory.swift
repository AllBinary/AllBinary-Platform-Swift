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
// package org.allbinary.game.commands

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class GameCommandsFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var TOGGLE_FULLSCREEN: Command! = nil
    public var TOGGLE_KEYBOARD: Command! = nil
    public var SET_MENU_DISPLAYABLE: Command! = nil
    public var APPLICATION_UPDATE: Command! = nil
    public var DISPLAY_ABOUT: Command! = nil
    public var OPEN_WEB_URL: Command! = nil
    public var CLOSE_OPTIONS: Command! = nil
    public var DISPLAY_OPTIONS: Command! = nil
    public var START_TRACE: Command! = nil
    public var STOP_TRACE: Command! = nil
    public var DEFAULT_OPTIONS: Command! = nil
    public var SHOW_GAME_CANVAS: Command! = nil
    public var CLOSE_AND_SHOW_GAME_CANVAS: Command! = nil
    public var QUIT_COMMAND: Command! = nil
    public var RESTART_COMMAND: Command! = nil
    public var DISPLAY_SAVE_FORM: Command! = nil
    public var SAVE: Command! = nil
    public var DISPLAY_LOAD_FORM: Command! = nil
    public var LOAD_FILE: Command! = nil
    public var DELETE_FILE: Command! = nil
    public var EXIT_COMMAND: Command! = nil
    public var EXIT_WITHOUT_PROGRESS_COMMAND: Command! = nil
    public var START_COMMAND: Command! = nil
    public var CONTINUE_COMMAND: Command! = nil
    public var SELECT_COMMAND: Command! = nil
    public var FEATURE_UPDATE: Command! = nil
    public var BUY_COMMAND: Command! = nil

    private func initFields() {
    self.TOGGLE_FULLSCREEN = Command("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.TOGGLE_KEYBOARD = Command("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.SET_MENU_DISPLAYABLE = Command("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.APPLICATION_UPDATE = Command(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.DISPLAY_ABOUT = Command(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    self.OPEN_WEB_URL = Command("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    self.CLOSE_OPTIONS = Command("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.DISPLAY_OPTIONS = Command(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    self.START_TRACE = Command("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.STOP_TRACE = Command("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.DEFAULT_OPTIONS = Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.SHOW_GAME_CANVAS = Command("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.CLOSE_AND_SHOW_GAME_CANVAS = Command("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.QUIT_COMMAND = Command("Quit", StringUtil.getInstance().EMPTY_STRING, Command.STOP, 1)
    self.RESTART_COMMAND = Command("Restart", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
    self.DISPLAY_SAVE_FORM = Command("Save To", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    self.SAVE = Command("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    self.DISPLAY_LOAD_FORM = Command("Load", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    self.LOAD_FILE = Command("Load File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3)
    self.DELETE_FILE = Command("Delete File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.EXIT_COMMAND = Command("Exit", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2)
    self.EXIT_WITHOUT_PROGRESS_COMMAND = Command("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2)
    self.START_COMMAND = Command(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.CONTINUE_COMMAND = Command("Continue", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.SELECT_COMMAND = Command("Select", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.FEATURE_UPDATE = Command("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.BUY_COMMAND = Command("BUY", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    

    @discardableResult open class func getInstance() -> GameCommandsFactory! {
        if (GameCommandsFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            GameCommandsFactory.instance = GameCommandsFactory()
        }
        return (GameCommandsFactory.instance as! GameCommandsFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

