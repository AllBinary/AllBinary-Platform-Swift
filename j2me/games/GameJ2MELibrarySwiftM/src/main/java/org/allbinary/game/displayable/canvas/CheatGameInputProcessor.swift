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
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventUtil
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.special.SpecialGameInputFactory
// import org.allbinary.game.layer.special.SpecialGameInputInterface
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class CheatGameInputProcessor: PlayerGameInput {
    public static var inputProcessor: SpecialGameInputInterface! = SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT
    fileprivate var PROCESS_GAME: String! = nil
    fileprivate var gameCanvas: AllBinaryGameCanvas! = nil
    fileprivate var gameKeyFactory: GameKeyFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.PROCESS_GAME = "processGame"
    
    self.gameKeyFactory = GameKeyFactory.getInstance()
    }
    

    public init(_ gameCanvas: AllBinaryGameCanvas!) {
        super.init(BasicArrayListD(), BasicArrayListD(), -1)
        self.initFields()
        self.gameCanvas = gameCanvas
    }
    

    open override func update() {
        do {
            let gameLayerManager: AllBinaryGameLayerManager! = self.gameCanvas.getLayerManager()
            let list: BasicArrayList! = self.getGameKeyEventList()
            let size: Int32 = list.size()
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                let anyType: JObject! = list.objectArray[index]
                let key: Int32 = GameKeyEventUtil.getKey(anyType)
                if (key == self.gameKeyFactory.LEVEL_DOWN.getId()) {
                    CheatGameInputProcessor.inputProcessor.strafeLeft()
                    break
                } else if (key == self.gameKeyFactory.LEVEL_UP.getId()) {
                    CheatGameInputProcessor.inputProcessor.strafeRight()
                    break
                }
                if (key == self.gameKeyFactory.LEFT.getId()) {
                    CheatGameInputProcessor.inputProcessor.left()
                    break
                } else if (key == self.gameKeyFactory.RIGHT.getId()) {
                    CheatGameInputProcessor.inputProcessor.right()
                    break
                } else if (key == self.gameKeyFactory.UP.getId()) {
                    CheatGameInputProcessor.inputProcessor.up()
                    break
                } else if (key == self.gameKeyFactory.DOWN.getId()) {
                    CheatGameInputProcessor.inputProcessor.down()
                    break
                } else if (key == self.gameKeyFactory.KEY_NUM1.getId()) {
                    CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, GameKeyEvent.NONE)
                    break
                } else if (key == self.gameKeyFactory.KEY_NUM3.getId()) {
                    CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, GameKeyEvent.NONE)
                    break
                }
                }
            }
            list.clear()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

