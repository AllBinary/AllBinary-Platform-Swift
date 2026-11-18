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
// import javax.microedition.lcdui.Choice
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.GameFeatureFormUtil
// import org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.string.StringUtil

open class InGameOptionsForm: CommandForm {
    public static let DISPLAY: Command! = Command("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    public static let SAVE: Command! = Command("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    public static let DEFAULT: Command! = Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    

    public override init(_ commandListener: CommandListener!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        let gameFeatureFormUtil: GameFeatureFormUtil! = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(self, InGameFeatureChoiceGroups.getExclusiveInstance().get(), ChoiceConstants.EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(self, InGameFeatureChoiceGroups.getMultipleInstance().get(), ChoiceConstants.MULTIPLE)
        self.initCommands(commandListener)
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(InGameOptionsForm.DEFAULT)
        self.setCommandListener(cmdListener)
    }
}

