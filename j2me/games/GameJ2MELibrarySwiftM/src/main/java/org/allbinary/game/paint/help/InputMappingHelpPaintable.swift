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
// package org.allbinary.game.paint.help

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.mapping.GameInputMapping
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

open class InputMappingHelpPaintable: HelpPaintable {
    fileprivate static let AND: String! = " and "
    fileprivate static let SEP: String! = ", "
    fileprivate static let MORE_THAN_TWO_IN_LIST_AND: String! = ", and "
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var commonSeps: CommonSeps! = nil
    public var stringUtil: StringUtil! = nil
    fileprivate var basicColorFactory: BasicColorFactory! = nil
    fileprivate var NONE: GameKey! = nil
    fileprivate var EMPTY_STRING: String! = nil
    fileprivate var gameInputMappingArray: JArray<GameInputMapping?>! = nil
    fileprivate var keyMappingArray: JArray<BasicArrayList?>! = nil
    fileprivate var actionBasicColor: JArray<BasicColor?>! = nil
    fileprivate var inputBasicColorArray: JArray<JArray<BasicColor?>?>! = nil
    fileprivate var selectedBasicColor: BasicColor! = nil
    fileprivate var updateMyFontProperties: UpdateMyFontProperties! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.commonSeps = CommonSeps.getInstance()
    self.stringUtil = StringUtil.getInstance()
    self.basicColorFactory = BasicColorFactory.getInstance()
    self.NONE = GameKeyFactory.getInstance().NONE
    self.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    
    self.keyMappingArray = JArray<BasicArrayList?>(0, nil)
    self.actionBasicColor = BasicColorUtil.getInstance().ZERO_ARRAY
    self.inputBasicColorArray = JArray<JArray<BasicColor?>?>(0, factory: { JArray<BasicColor?>(0, nil) })
    self.selectedBasicColor = nil
    self.updateMyFontProperties = UpdateMyFontProperties()
    }
    

    public init(_ gameInputMappingArray: JArray<GameInputMapping?>!, _ backgroundBasicColor: BasicColor!, _ basicColor: BasicColor!) {
        super.init("Input Mapping", backgroundBasicColor, basicColor)
        self.initFields()
        self.gameInputMappingArray = gameInputMappingArray
        self.update(self.NONE, self.NONE)
        if (backgroundBasicColor === self.basicColorFactory.WHITE || basicColor === self.basicColorFactory.WHITE) {
            self.selectedBasicColor = self.basicColorFactory.RED
        } else {
            self.selectedBasicColor = self.basicColorFactory.WHITE
        }
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        let updateMyFontProperties: UpdateMyFontProperties! = UpdateMyFontProperties()
        updateMyFontProperties.charHeight = font.getHeight()
        let stringMaker: StringMaker! = StringMaker()
        let inputInfo: JArray<String?>! = self.inputInfo
        let size: Int32 = inputInfo.length
        updateMyFontProperties.actionStringArray = JArray<String?>(size, nil)
        updateMyFontProperties.keymappingBeginWidthArray = JArray<Int32>(size, 0)
        updateMyFontProperties.actionStringDeltaXArray = JArray<Int32>(size, 0)
        updateMyFontProperties.inputDeltaXArray = JArray<JArray<Int32>?>(size, factory: { JArray<Int32>(0, 0) })
        updateMyFontProperties.sepArray = JArray<JArray<String?>?>(size, factory: { JArray<String?>(0, nil) })
        updateMyFontProperties.sepWidthArray = JArray<JArray<Int32>?>(size, factory: { JArray<Int32>(0, 0) })
        var list: BasicArrayList! = nil
        var keyMappings: String! = nil
        var actionString: String! = nil
        var input: Input! = nil
        var size2: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            list = self.keyMappingArray[index]
            keyMappings = self.get(list)
            stringMaker.delete(0, stringMaker.length())
            actionString = stringMaker.append(inputInfo[index]).append(self.commonSeps.COLON).append(self.commonSeps.SPACE).append(self.commonSeps.SPACE).toString()
            updateMyFontProperties.actionStringArray[index] = actionString
            stringMaker.delete(0, stringMaker.length())
            updateMyFontProperties.keymappingBeginWidthArray[index] = (font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]).append(keyMappings).toString()) >> 1)
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString)
            size2 = list.size()
            updateMyFontProperties.inputDeltaXArray[index] = JArray<Int32>(size2, 0)
            updateMyFontProperties.sepArray[index] = JArray<String?>(size2, nil)
            updateMyFontProperties.sepWidthArray[index] = JArray<Int32>(size2, 0)
            do {
                var index2: Int32 = 0
                while (index2 < size2) {
                    defer { index2 &+= 1 }
                input = (list.objectArray[index2] as! Input)
                updateMyFontProperties.inputDeltaXArray[index]![index2] = font.stringWidth(input.getName())
                updateMyFontProperties.sepArray[index]![index2] = self.EMPTY_STRING
                if (index2 &+ 1 < list.size()) {
                    if (list.size() == 2) {
                        updateMyFontProperties.sepArray[index]![index2] = InputMappingHelpPaintable.AND
                    } else {
                        if (index2 &+ 2 == list.size()) {
                            updateMyFontProperties.sepArray[index]![index2] = InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND
                        } else {
                            updateMyFontProperties.sepArray[index]![index2] = InputMappingHelpPaintable.SEP
                        }
                    }
                }
                if (updateMyFontProperties.sepArray[index]![index2] != self.EMPTY_STRING) {
                    updateMyFontProperties.sepWidthArray[index]![index2] = font.stringWidth(updateMyFontProperties.sepArray[index]![index2])
                }
                }
            }
            }
        }
        self.updateMyFontProperties = updateMyFontProperties
        super.updateMeasurement(graphics)
    }
    

    open func update(_ selectedGameKey: GameKey!, _ selectedInput: Input!) {
        let stringMaker: StringMaker! = StringMaker()
        self.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(self.stringUtil.toString(selectedGameKey)).append(" Input: ").append(self.stringUtil.toString(selectedInput)).toString(), self, self.commonStrings.UPDATE)
        let gameKeyMapping: PersistentInputMapping! = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        let size: Int32 = self.gameInputMappingArray.length
        let keyInfo: JArray<String?>! = JArray<String?>(size, nil)
        let keyMappingArray: JArray<BasicArrayList?>! = JArray<BasicArrayList?>(size, nil)
        let actionBasicColor: JArray<BasicColor?>! = JArray<BasicColor?>(size, nil)
        let inputBasicColorArray: JArray<JArray<BasicColor?>?>! = JArray<JArray<BasicColor?>?>(size, nil)
        var gameInputMapping: GameInputMapping! = nil
        var gameKey: GameKey! = nil
        var list: BasicArrayList! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            gameInputMapping = self.gameInputMappingArray[index]
            gameKey = gameInputMapping.getGameKey()
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey)
            let size2: Int32 = list.size()
            inputBasicColorArray[index] = JArray<BasicColor?>(size2, nil)
            do {
                var index2: Int32 = 0
                while (index2 < size2) {
                    defer { index2 &+= 1 }
                inputBasicColorArray[index]![index2] = self.basicColor
                }
            }
            if (gameKey === selectedGameKey) {
                stringMaker.delete(0, stringMaker.length())
                self.logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(self.stringUtil.toString(selectedGameKey)).toString(), self, self.commonStrings.UPDATE)
                actionBasicColor[index] = self.selectedBasicColor
                let indexOfSelectedInput: Int32 = list.indexOf(selectedInput)
                if (indexOfSelectedInput >= 0) {
                    stringMaker.delete(0, stringMaker.length())
                    self.logUtil.putF(stringMaker.append("Found: selected Input: ").append(self.stringUtil.toString(selectedInput)).toString(), self, self.commonStrings.UPDATE)
                    inputBasicColorArray[index]![indexOfSelectedInput] = self.selectedBasicColor
                }
            } else {
                actionBasicColor[index] = self.basicColor
            }
            keyInfo[index] = gameInputMapping.getName()
            keyMappingArray[index] = list
            }
        }
        self.keyMappingArray = keyMappingArray
        self.actionBasicColor = actionBasicColor
        self.inputBasicColorArray = inputBasicColorArray
        super.setInputInfoP(keyInfo)
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    @discardableResult fileprivate func get(_ keyList: BasicArrayList!) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        var key: Input! = nil
        let size: Int32 = keyList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            key = (keyList.objectArray[index] as! Input)
            stringBuffer.append(key.getName())
            if (index &+ 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(InputMappingHelpPaintable.AND)
                } else {
                    if (index &+ 2 == keyList.size()) {
                        stringBuffer.append(InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND)
                    } else {
                        stringBuffer.append(InputMappingHelpPaintable.SEP)
                    }
                }
            }
            }
        }
        return stringBuffer.toString()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let halfWidth: Int32 = self.displayInfo.getLastHalfWidth()
        graphics.setColor(self.basicColor.intValue())
        graphics.drawString(self.title, halfWidth - self.titleBeginWidth, self.updateMyFontProperties.charHeight, self.anchor)
        let inputInfo: JArray<String?>! = self.inputInfo
        let size: Int32 = inputInfo.length
        var y: Int32 = 0
        var deltaX: Int32 = 0
        var size2: Int32 = 0
        var actionString: String! = nil
        var input: Input! = nil
        var list: BasicArrayList! = nil
        var sep: String! = nil
        var beginWidth: Int32 = 0
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            y = (index &+ 3) &* self.updateMyFontProperties.charHeight
            deltaX = 0
            list = self.keyMappingArray[index]
            size2 = list.size()
            beginWidth = self.updateMyFontProperties.keymappingBeginWidthArray[index]
            graphics.setColor(self.actionBasicColor[index]!.intValue())
            actionString = self.updateMyFontProperties.actionStringArray[index]
            graphics.drawString(actionString, halfWidth &- beginWidth &+ deltaX, y, self.anchor)
            deltaX = deltaX &+ self.updateMyFontProperties.actionStringDeltaXArray[index]
            do {
                var index2: Int32 = 0
                while (index2 < size2) {
                    defer { index2 &+= 1 }
                input = (list.objectArray[index2] as! Input)
                graphics.setColor(self.inputBasicColorArray[index]![index2].intValue())
                graphics.drawString(input.getName(), halfWidth &- beginWidth &+ deltaX, y, self.anchor)
                deltaX = deltaX &+ self.updateMyFontProperties.inputDeltaXArray[index]![index2]
                sep = self.updateMyFontProperties.sepArray[index]![index2]
                graphics.setColor(self.basicColor.intValue())
                graphics.drawString(sep, halfWidth &- beginWidth &+ deltaX, y, self.anchor)
                deltaX = deltaX &+ self.updateMyFontProperties.sepWidthArray[index]![index2]
                }
            }
            }
        }
    }
}

