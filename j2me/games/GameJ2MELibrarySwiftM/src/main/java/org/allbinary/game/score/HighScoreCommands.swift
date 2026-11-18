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
// import javax.microedition.lcdui.Command
// import org.allbinary.logic.string.StringUtil

open class HighScoreCommands: JObject {
    fileprivate static let instance: HighScoreCommands! = HighScoreCommands()
    public var DISPLAY: Command! = nil
    public var PERSONAL: Command! = nil
    public var WORLD: Command! = nil

    private func initFields() {
    self.DISPLAY = Command("Scores", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.PERSONAL = Command("Personal", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    self.WORLD = Command("World", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> HighScoreCommands! {
        return HighScoreCommands.instance
    }
}

