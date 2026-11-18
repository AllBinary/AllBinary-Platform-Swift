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
// package org.allbinary.graphics.displayable.command

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import org.allbinary.logic.string.StringUtil

open class MyCommandsFactory: JObject {
    fileprivate static let instance: MyCommandsFactory! = MyCommandsFactory()
    public var NO_COMMAND: Command! = nil
    public var GAUGE_CHANGE: Command! = nil
    public var SET_DISPLAYABLE: Command! = nil
    public var PAUSE_COMMAND: Command! = nil
    public var RESUME_COMMAND: Command! = nil

    private func initFields() {
    self.NO_COMMAND = Command(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1)
    self.GAUGE_CHANGE = Command("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command.ITEM, 1)
    self.SET_DISPLAYABLE = Command("Display", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    self.PAUSE_COMMAND = Command("Pause", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
    self.RESUME_COMMAND = Command("Resume", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0)
    }
    

    @discardableResult open class func getInstance() -> MyCommandsFactory! {
        return MyCommandsFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

