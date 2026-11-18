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
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

open class HelpPaintable: Paintable, UpdateMyFontInterface {
    public var displayInfo: DisplayInfoSingleton! = nil
    public var updateMyFontProcessor: MyFontProcessor! = nil
    public var myFontProcessor: MyFontProcessor! = nil
    public var anchor: Int32 = 0
    public var title: String! = nil
    public var inputInfo: JArray<String?>! = nil
    public var basicColor: BasicColor! = nil
    public var titleBeginWidth: Int32 = 0
    fileprivate var beginWidthArray: JArray<Int32>! = nil
    fileprivate var charHeight: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfo = DisplayInfoSingleton.getInstance()
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.anchor = Anchor.TOP_LEFT
    
    self.inputInfo = StringUtil.getInstance().getArrayInstance()
    
    self.titleBeginWidth = 0
    self.beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
    self.charHeight = 0
    }
    

    public init(_ title: String!, _ backgroundBasicColor: BasicColor!, _ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.title = title
        self.basicColor = basicColor
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.titleBeginWidth = (font.stringWidth(self.title) >> 1)
        self.charHeight = font.getHeight()
        let size: Int32 = self.inputInfo.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.beginWidthArray[index] = (font.stringWidth(self.inputInfo[index]) >> 1)
            }
        }
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func setInputInfoP(_ inputInfo: JArray<String?>!) {
        self.inputInfo = inputInfo
        self.beginWidthArray = JArray<Int32>(self.inputInfo.length, 0)
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let halfWidth: Int32 = self.displayInfo.getLastHalfWidth()
        graphics.setColor(self.basicColor.intValue())
        graphics.drawString(self.title, halfWidth &- self.titleBeginWidth, self.charHeight, self.anchor)
        let size: Int32 = self.inputInfo.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            graphics.drawString(self.inputInfo[index], halfWidth &- self.beginWidthArray[index], (index &+ 3) &* self.charHeight, self.anchor)
            }
        }
    }
}

