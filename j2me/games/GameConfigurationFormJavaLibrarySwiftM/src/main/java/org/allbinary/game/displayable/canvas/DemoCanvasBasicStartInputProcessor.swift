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
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList

open class DemoCanvasBasicStartInputProcessor: BasicMenuInputProcessor {
    

    public init(_ gameKeyEventList: BasicArrayList!, _ gameCanvas: RunnableCanvas!) {
        super.init(gameKeyEventList, -1, gameCanvas)
    }
    

    @discardableResult open override func processInputList() -> Int32 {
        let list: BasicArrayList! = self.getGameKeyEventList()
        let size: Int32 = list.size()
        var gameKeyEvent: GameKeyEvent! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            gameKeyEvent = (list.objectArray[index] as! GameKeyEvent)
            self.logUtil.putF(StringMaker().append("Start GameKey: ").append(StringUtil.getInstance().toString(gameKeyEvent)).toString(), self, GameInputStrings.getInstance().PROCESS_INPUT)
            }
        }
        self.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().START_COMMAND, NullCanvas.NULL_CANVAS)
        return size
    }
}

