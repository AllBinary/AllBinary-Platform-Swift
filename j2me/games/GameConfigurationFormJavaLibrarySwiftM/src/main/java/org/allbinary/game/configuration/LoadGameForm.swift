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
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.NullImage
// import javax.microedition.lcdui.StringItem
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.persistance.GamePersistanceSingleton
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList

open class LoadGameForm: CommandForm {
    fileprivate var meUtil: MIDPUtil! = nil
    fileprivate var areChoices: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.meUtil = MIDPUtil.getInstance()
    self.areChoices = false
    }
    

    public override init(_ commandListener: CommandListener!, _ title: String!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.update()
        self.initCommands(commandListener)
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.LOAD_FILE)
        self.addCommand(gameCommandsFactory.DELETE_FILE)
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    }
    

    open override func update() {
        let list: BasicArrayList! = GamePersistanceSingleton.getInstance().getIds()
        self.deleteAll()
        if (list.size() > 0) {
            self.add(list, "Select A Saved Game", ChoiceConstants.EXCLUSIVE)
            self.areChoices = true
        } else {
            self.meUtil.appendItem(self, StringItem("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item.PLAIN))
            self.areChoices = false
        }
        super.update()
    }
    

    fileprivate func add(_ list: BasicArrayList!, _ name: String!, _ option: Int32) {
        let choiceGroup: ChoiceGroup! = self.getChoiceGroup(list, name, option)
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true)
        }
        self.meUtil.appendItem(self, choiceGroup)
    }
    

    @discardableResult fileprivate func getChoiceGroup(_ list: BasicArrayList!, _ name: String!, _ option: Int32) -> ChoiceGroup! {
        let METHOD_NAME: String! = "getChoiceGroup"
        let ADDING_CHOICE: String! = "Adding Choice: "
        let choiceGroup: ChoiceGroup! = ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let anyType: JObject! = list.objectArray[index]
            self.logUtil.putF(StringMaker().append(ADDING_CHOICE).append(anyType.toString()).toString(), self, METHOD_NAME)
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE)
            }
        }
        return choiceGroup
    }
    

    @discardableResult open func getSelectedId() -> Int32 {
        if (self.areChoices) {
            let choiceGroup: ChoiceGroup! = (self.get(0) as! ChoiceGroup)
            return choiceGroup.getSelectedIndex()
        } else {
            return -1
        }
    }
    

    @discardableResult open func getSelectedText() -> Int32 {
        if (self.areChoices) {
            let choiceGroup: ChoiceGroup! = (self.get(0) as! ChoiceGroup)
            let value: Int32 = jstr(choiceGroup.getString(choiceGroup.getSelectedIndex())).intValue()
            return value
        } else {
            return -1
        }
    }
}

