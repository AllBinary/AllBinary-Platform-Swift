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
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.mapping.GameInputMapping
// import org.allbinary.game.input.mapping.PersistentInputMapping
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayList

open class BasicInputMappingHelpPaintable: HelpPaintable {
    fileprivate var gameInputMappingArray: JArray<GameInputMapping?>! = nil
    fileprivate var NONE: GameKey! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    self.NONE = GameKeyFactory.getInstance().NONE
    }
    

    public init(_ gameInputMappingArray: JArray<GameInputMapping?>!, _ basicColor: BasicColor!) {
        super.init("Help Screen", BasicColorFactory.getInstance().BLACK, basicColor)
        self.initFields()
        self.gameInputMappingArray = gameInputMappingArray
        self.update(self.NONE, self.NONE)
    }
    

    open func update(_ selectedGameKey: GameKey!, _ selectedInput: Input!) {
        let gameKeyMapping: PersistentInputMapping! = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        let EQUAL: String! = " = "
        let stringMaker: StringMaker! = StringMaker()
        let size: Int32 = self.gameInputMappingArray.length
        let keyInfo: JArray<String?>! = JArray<String?>(size, nil)
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
            stringMaker.delete(0, stringMaker.length())
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(self.get(list)).toString()
            }
        }
        super.setInputInfoP(keyInfo)
    }
    

    @discardableResult fileprivate func get(_ keyList: BasicArrayList!) -> String! {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let stringBuffer: StringMaker! = StringMaker()
        let AND: String! = "and "
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
                    stringBuffer.append(commonSeps.SPACE).append(AND)
                } else {
                    if (index &+ 2 == keyList.size()) {
                        stringBuffer.append(commonSeps.COMMA_SEP)
                        stringBuffer.append(AND)
                    } else {
                        stringBuffer.append(commonSeps.COMMA_SEP)
                    }
                }
            }
            }
        }
        return stringBuffer.toString()
    }
}

