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
// package org.allbinary.game.configuration

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.TextField
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.ABSystemWrapper

open class SaveGameForm: CommandForm {
    fileprivate static var FORM: CommandForm! = CommandForm.getNullCommandForm()
    fileprivate var meUtil: MIDPUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.meUtil = MIDPUtil.getInstance()
    }
    

    @discardableResult open class func createForm(_ commandListener: CommandListener!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) -> CommandForm! {
        SaveGameForm.FORM = SaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        return SaveGameForm.FORM
    }
    

    @discardableResult open class func getInstance() -> CommandForm! {
        return SaveGameForm.FORM
    }
    

    public override init(_ commandListener: CommandListener!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        let timeString: String! = jstr(ABSystemWrapper.getInstance().currentTimeMillis())
        self.meUtil.appendItem(self, TextField("Name: ", timeString, 30, TextField.ANY))
        self.initCommands(commandListener)
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.SAVE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    }
}

