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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.persistance.GameDifficultyFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList

open class GameDifficultyOptions: CommandForm {
    fileprivate var meUtil: MIDPUtil! = nil
    fileprivate var list: BasicArrayList! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.meUtil = MIDPUtil.getInstance()
    
    }
    

    public init(_ commandListener: CommandListener!, _ title: String!, _ list: BasicArrayList!, _ backgrounBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.list = list
        self.update()
        self.initCommands(commandListener)
        let gameDifficultyFactory: GameDifficultyFactory! = GameDifficultyFactory.getInstance()
        self.setSelectedId(gameDifficultyFactory.getLevel())
    }
    

    open override func `open`() {
        super.`open`()
    }
    

    open override func close() {
        super.close()
        self.save()
    }
    

    open func save() {
        let gameDifficultyFactory: GameDifficultyFactory! = GameDifficultyFactory.getInstance()
        gameDifficultyFactory.setLevel(self.getSelectedId())
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        let gameCommandsFactory: GameCommandsFactory! = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    }
    

    open override func update() {
        self.deleteAll()
        self.add(self.list, "Difficulty", ChoiceConstants.EXCLUSIVE)
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
        let METHOD_NAME: String! = "addChoiceGroup"
        let NAME: String! = "Adding Choice: "
        let choiceGroup: ChoiceGroup! = ChoiceGroup(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY)
        let size: Int32 = list.size()
        var anyType: JObject! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            anyType = list.objectArray[index]
            self.logUtil.putF(StringMaker().append(NAME).append(anyType.toString()).toString(), self, METHOD_NAME)
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE)
            }
        }
        return choiceGroup
    }
    

    open func setSelectedId(_ id: Int32) {
        let choiceGroup: ChoiceGroup! = (self.get(0) as! ChoiceGroup)
        choiceGroup.setSelectedIndex(id, true)
    }
    

    @discardableResult open func getSelectedId() -> Int32 {
        let choiceGroup: ChoiceGroup! = (self.get(0) as! ChoiceGroup)
        return choiceGroup.getSelectedIndex()
    }
    

    @discardableResult open func getSelectedText() -> Int32 {
        let choiceGroup: ChoiceGroup! = (self.get(0) as! ChoiceGroup)
        let value: Int32 = Int32(choiceGroup.getString(choiceGroup.getSelectedIndex()))!.intValue()
        return value
    }
}

