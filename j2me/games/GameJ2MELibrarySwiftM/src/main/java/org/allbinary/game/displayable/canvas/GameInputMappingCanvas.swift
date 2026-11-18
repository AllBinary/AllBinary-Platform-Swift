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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.mapping.InputMappingInterface
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.game.paint.help.HelpPaintable
// import org.allbinary.game.paint.help.InputMappingHelpPaintable
// import org.allbinary.graphics.paint.ProcessPaintable
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.util.BasicArrayList

open class GameInputMappingCanvas: GameCommandCanvas, InputMappingInterface {
    public static let NAME: String! = "GameInputMappingCanvas"
    public static let DISPLAY: Command! = Command("Controls", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    public static let DEFAULT: Command! = Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    fileprivate var paintable: ProcessPaintable! = nil
    fileprivate var helpPaintable: InputMappingHelpPaintable! = nil
    public var colorFillPaintable: ColorFillBasePaintable! = nil
    fileprivate var inputMapping: PersistentInputMapping! = nil
    fileprivate var NONE: GameKey! = nil
    fileprivate var abeClientInformation: AbeClientInformationInterface! = nil
    fileprivate var selectedGameKey: GameKey! = nil
    fileprivate var selectedInput: Input! = nil
    fileprivate var inputFactory: InputFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    self.NONE = GameKeyFactory.getInstance().NONE
    
    self.selectedGameKey = self.NONE
    self.selectedInput = self.NONE
    self.inputFactory = InputFactory.getInstance()
    }
    

    public init(_ abeClientInformation: AbeClientInformationInterface!, _ commandListener: CommandListener!, _ allBinaryGameLayerManager: AllBinaryGameLayerManager!, _ helpPaintable: HelpPaintable!) {
        super.init(commandListener, GameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        if (helpPaintable == nil) {
            jThrow(JException("Exception", "Help Paintable Exception"))
        }
        self.abeClientInformation = abeClientInformation
        self.helpPaintable = (helpPaintable as! InputMappingHelpPaintable)
        self.inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        self.paintable = ProcessPaintable()
        self.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    }
    

    open override func close() {
        super.close()
        self.paintable.process()
        self.selectedGameKey = self.NONE
        self.selectedInput = self.NONE
        self.update()
    }
    

    open override func initCommands(_ cmdListener: CommandListener!) {
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(GameInputMappingCanvas.DEFAULT)
        self.addCommand(GameInputMappingInstructionsCanvas.DISPLAY)
        self.setCommandListener(cmdListener)
    }
    

    open override func keyPressed(_ keyCode: Int32) {
        self.keyPressedByDevice(keyCode, 0)
    }
    

    open override func keyReleased(_ keyCode: Int32) {
        self.keyReleasedByDevice(keyCode, 0)
    }
    

    open override func keyRepeated(_ keyCode: Int32) {
        self.keyRepeatedByDevice(keyCode, 0)
    }
    

    open override func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        self.addGameKey(keyCode, false)
        super.keyPressedByDevice(keyCode, 0)
    }
    

    fileprivate func addGameKey(_ keyCode: Int32, _ repeated: Bool) {
        do {
            self.logUtil.putF(StringMaker().append("Raw Device Key Code: ").append(Integer.toHexString(keyCode)).toString(), self, self.gameInputStrings.ADD_KEY_EVENT)
            let gameKey: GameKey! = self.inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            let input: Input! = self.inputFactory.getInstanceById(keyCode)
            self.processInputMapping(gameKey, input)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func processInputMapping(_ gameKey: GameKey!, _ input: Input!) {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Start Passed GameKey: ")
        stringBuffer.append(self.stringUtil.toString(gameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(self.stringUtil.toString(input))
        self.logUtil.putF(stringBuffer.toString(), self, self.commonStrings.PROCESS)
        if (self.selectedGameKey !== self.NONE) {
            self.gameActionCrud(gameKey, input)
        } else {
            self.setSelectedAction(gameKey)
        }
    }
    

    fileprivate func setSelectedAction(_ gameKey: GameKey!) {
        self.logUtil.putF(StringMaker().append("Selected GameKey: ").append(self.stringUtil.toString(gameKey)).toString(), self, "setSelectedAction")
        self.selectedGameKey = gameKey
        self.selectedInput = self.NONE
        self.helpPaintable.update(self.selectedGameKey, self.selectedInput)
        self.repaintBehavior.onChangeRepaint(self)
    }
    

    fileprivate func gameActionCrud(_ gameKey: GameKey!, _ input: Input!) {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Start GameKey: ")
        stringBuffer.append(self.stringUtil.toString(self.selectedGameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(self.stringUtil.toString(self.selectedInput))
        self.logUtil.putF(stringBuffer.toString(), self, "gameActionCrud")
        if (self.selectedInput === self.NONE) {
            let list: BasicArrayList! = self.inputMapping.getInputMapping().getMappedInput(self.selectedGameKey)
            let isInputAlreadyMappedToSelectedAction: Bool = list.contains(input)
            if (isInputAlreadyMappedToSelectedAction) {
                self.logUtil.putF(StringMaker().append("Already Mapped Input: ").append(self.stringUtil.toString(input)).toString(), self, "gameActionCrud")
                self.selectedInput = input
                self.helpPaintable.update(self.selectedGameKey, self.selectedInput)
                self.repaintBehavior.onChangeRepaint(self)
            } else {
                self.addNewMapping(gameKey, input)
            }
        } else if (self.inputMapping.isDelete(input)) {
            self.deleteCurrentMapping()
        } else {
            self.setSelectedAction(gameKey)
        }
    }
    

    fileprivate func addNewMapping(_ gameKey: GameKey!, _ input: Input!) {
        let METHOD_NAME: String! = "addNewMapping"
        self.logUtil.putF(self.commonStrings.START, self, METHOD_NAME)
        let isInputAlreadyMapped: Bool = self.inputMapping.getInputMapping().isMapped(input)
        if (!isInputAlreadyMapped && !self.inputMapping.isSystemInput(input)) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append("Add Key Mapping : GameKey: ")
            stringBuffer.append(self.stringUtil.toString(self.selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(self.stringUtil.toString(self.selectedInput))
            self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
            self.inputMapping.getInputMapping().add(self.selectedGameKey, input)
            self.selectedInput = input
            self.update()
        } else {
            self.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", self, METHOD_NAME)
            self.setSelectedAction(gameKey)
        }
    }
    

    fileprivate func deleteCurrentMapping() {
        let METHOD_NAME: String! = "deleteCurrentMapping"
        let list: BasicArrayList! = self.inputMapping.getInputMapping().getMappedInput(self.selectedGameKey)
        if (list.size() > 1) {
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append("Start GameKey: ")
            stringBuffer.append("Remove Key Mapping: GameKey: ")
            stringBuffer.append(self.stringUtil.toString(self.selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(self.stringUtil.toString(self.selectedInput))
            self.logUtil.putF(stringBuffer.toString(), self, METHOD_NAME)
            self.inputMapping.getInputMapping().remove(self.selectedGameKey, self.selectedInput)
            self.selectedInput = self.NONE
            self.update()
        } else {
            self.logUtil.putF("Can't Remove Last Key Mapping", self, METHOD_NAME)
        }
    }
    

    open func setDefault() {
        self.inputMapping.setDefault(self.abeClientInformation)
        self.helpPaintable.update(self.NONE, self.NONE)
        self.repaintBehavior.onChangeRepaint(self)
    }
    

    open override func update() {
        self.inputMapping.update(self.abeClientInformation)
        self.helpPaintable.update(self.selectedGameKey, self.selectedInput)
        self.repaintBehavior.onChangeRepaint(self)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.colorFillPaintable.paint(graphics)
        self.helpPaintable.paint(graphics)
        self.paintable.paint(graphics)
        super.paint(graphics)
    }
}

