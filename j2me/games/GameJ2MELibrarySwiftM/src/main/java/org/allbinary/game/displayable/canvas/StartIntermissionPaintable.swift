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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.FontDebugFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

open class StartIntermissionPaintable: InitUpdatePaintable, UpdateMyFontInterface {
    public var fontDebugFactory: FontDebugFactory! = nil
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    public var gameCanvas: AllBinaryGameCanvas! = nil
    public var stringArray: JArray<String?>! = nil
    public var fontSize: Int32 = 0
    public var font: Font! = nil
    public var lastWidth: JArray<Int32>! = nil
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var color: Int32 = 0
    public var lineYOffsetArray: JArray<Int32>! = nil
    fileprivate var hasChanged: Bool = false
    fileprivate var anchor: Int32 = 0
    public var fontHeightP: Int32 = 0
    fileprivate var BEGIN_LEVEL: String! = nil
    fileprivate var EMPTY_STRING: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.fontDebugFactory = FontDebugFactory.getInstance()
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    
    
    
    
    
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.basicColor = BasicColorFactory.getInstance().BLACK
    
    self.lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY
    self.hasChanged = true
    self.anchor = Anchor.TOP_LEFT
    self.fontHeightP = 0
    self.BEGIN_LEVEL = "Begin Level "
    self.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ gameCanvas: AllBinaryGameCanvas!, _ stringArray: JArray<String?>!, _ basicColor: BasicColor!, _ font: Font!) {
        super.init()
        self.initFields()
        self.gameCanvas = gameCanvas
        self.stringArray = stringArray
        self.lastWidth = JArray<Int32>(self.stringArray.length, 0)
        self.setBasicColorP(basicColor)
        self.color = basicColor.intValue()
        self.fontSize = font.getSize()
        self.font = font
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.fontHeightP = font.getHeight()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let existingFont: Font! = graphics.getFont()
        self.fontDebugFactory.setFont(self.font, graphics)
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        self.basicSetColorUtil.setBasicColorP3(graphics, self.basicColor, self.color)
        var beginWidth: Int32 = 0
        do {
            var index: Int32 = self.lineYOffsetArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            if (self.hasChanged) {
                self.lastWidth[index] = (graphics.getFont().stringWidth(self.stringArray[index]) >> 1)
            }
            beginWidth = self.lastWidth[index]
            graphics.drawString(self.stringArray[index], displayInfo.getLastHalfWidth() &- beginWidth, displayInfo.getLastHalfHeight() &- self.lineYOffsetArray[index], self.anchor)
            }
        }
        self.hasChanged = false
        self.fontDebugFactory.setFont(existingFont, graphics)
    }
    

    open override func update() {
        let level: Int32 = self.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel()
        self.stringArray[0] = StringMaker().append(self.BEGIN_LEVEL).appendint(level).toString()
        do {
            var index: Int32 = self.stringArray.length &- 1
            while (index >= 1) {
                defer { index &-= 1 }
            self.stringArray[index] = self.EMPTY_STRING
            }
        }
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
}

