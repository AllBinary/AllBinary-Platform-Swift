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
// package org.allbinary.game.score

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.event.GameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEventUtil
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.util.BasicArrayList

open class HighScoresCanvasLevelChangeInputProcessor: HighScoresCanvasInputProcessor, UpdateMyFontInterface {
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var INSTRUCTIONS: String! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var anchor: Int32 = 0
    fileprivate var fontHeight: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.anchor = Anchor.TOP_LEFT
    self.fontHeight = 0
    }
    

    public override init(_ highScoresCanvas: HighScoresCanvas!) {
        super.init(highScoresCanvas)
        self.initFields()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.fontHeight = font.getHeight()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func `open`() {
        GameKeyEventHandler.getInstance().addListener(self)
    }
    

    open override func close() {
        GameKeyEventHandler.getInstance().removeListener(self)
    }
    

    open override func update() {
        let list: BasicArrayList! = self.getGameKeyEventList()
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let anyType: JObject! = list.objectArray[index]
            let key: Int32 = GameKeyEventUtil.getKey(anyType)
            if (key == Canvas.RIGHT) {
                self.getHighScoresCanvas().getGameInfo().nextGameLevel()
            } else if (key == Canvas.LEFT) {
                self.getHighScoresCanvas().getGameInfo().previousGameLevel()
            }
            self.getHighScoresCanvas().executeUpdate()
            }
        }
        list.clear()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let width: Int32 = self.displayInfoSingleton.getLastWidth()
        let topScoresWidth: Int32 = (graphics.getFont().stringWidth(self.INSTRUCTIONS) >> 1)
        graphics.drawString(self.INSTRUCTIONS, (width >> 1) &- topScoresWidth, self.fontHeight &* 2, self.anchor)
    }
}

