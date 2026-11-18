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
// package org.allbinary.game.paint

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable

//J2MEForJ2ME
open class AboutPaintable: Paintable, UpdateMyFontInterface {
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var ABOUT: String! = nil
    fileprivate var info: JArray<String?>! = nil
    fileprivate var developers: JArray<String?>! = nil
    fileprivate var paintableArray: JArray<Paintable?>! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var charHeight: Int32 = 0
    fileprivate var aboutBeginWidth: Int32 = 0
    fileprivate var infoBeginWidth: JArray<Int32>! = nil
    fileprivate var developersBeginWidth: JArray<Int32>! = nil
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.ABOUT = CanvasStrings.getInstance().ABOUT
    
    
    self.paintableArray = JArray<Paintable?>([self])
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.charHeight = 0
    self.aboutBeginWidth = 0
    
    
    self.anchor = Anchor.TOP_LEFT
    }
    

    @discardableResult open class func getInstance(_ info: JArray<String?>!, _ developers: JArray<String?>!) -> AboutPaintable! {
        return AboutPaintable(info, developers)
    }
    

    public init(_ info: JArray<String?>!, _ developers: JArray<String?>!) {
        super.init()
        self.initFields()
        self.info = info
        self.infoBeginWidth = JArray<Int32>(self.info.length, 0)
        self.developers = developers
        self.developersBeginWidth = JArray<Int32>(self.developers.length, 0)
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.charHeight = font.getHeight()
        self.aboutBeginWidth = (font.stringWidth(self.ABOUT) >> 1)
        let infoSize: Int32 = self.info.length
        do {
            var index: Int32 = 0
            while (index < infoSize) {
                defer { index &+= 1 }
            self.infoBeginWidth[index] = (font.stringWidth(self.info[index]) >> 1)
            }
        }
        let size: Int32 = self.developers.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.developersBeginWidth[index] = (font.stringWidth(self.developers[index]) >> 1)
            }
        }
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    @discardableResult open func getPaintableArrayInstance() -> JArray<Paintable?>! {
        return self.paintableArray
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let halfWidth: Int32 = self.displayInfoSingleton.getLastHalfWidth()
        graphics.drawString(self.ABOUT, halfWidth &- self.aboutBeginWidth, 2 &* self.charHeight, self.anchor)
        let infoSize: Int32 = self.info.length
        do {
            var index: Int32 = 0
            while (index < infoSize) {
                defer { index &+= 1 }
            graphics.drawString(self.info[index], halfWidth &- self.infoBeginWidth[index], (4 &+ index) &* self.charHeight, self.anchor)
            }
        }
        let size: Int32 = self.developers.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            graphics.drawString(self.developers[index], halfWidth &- self.developersBeginWidth[index], (5 &+ infoSize &+ index) &* self.charHeight, self.anchor)
            }
        }
    }
}

