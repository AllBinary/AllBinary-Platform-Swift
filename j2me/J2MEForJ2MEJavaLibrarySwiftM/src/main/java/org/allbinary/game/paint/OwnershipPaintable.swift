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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.LogUtil

//J2MEForJ2ME
open class OwnershipPaintable: Paintable, UpdateMyFontInterface {
    public var logUtil: LogUtil! = nil
    fileprivate var displayInfo: DisplayInfoSingleton! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var COPYRIGHT: String! = nil
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var color: Int32 = 0
    fileprivate var anchor: Int32 = 0
    fileprivate var COPYRIGHT_Y: Int32 = 0
    fileprivate var beginWidth: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.displayInfo = DisplayInfoSingleton.getInstance()
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.COPYRIGHT = "AllBinary Copyright (c) 2011"
    self.basicColor = BasicColorFactory.getInstance().WHITE
    self.color = self.basicColor.intValue()
    self.anchor = Anchor.TOP_LEFT
    self.COPYRIGHT_Y = 0
    self.beginWidth = 0
    }
    

    @discardableResult open class func getInstance() -> OwnershipPaintable! {
        return OwnershipPaintable()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.COPYRIGHT_Y = 2 * font.getHeight()
        self.beginWidth = (font.stringWidth(self.COPYRIGHT) >> 1)
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
        self.color = basicColor.intValue()
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        graphics.setColor(self.color)
        let halfWidth: Int32 = self.displayInfo.getLastHalfWidth()
        let height: Int32 = self.displayInfo.getLastHeight()
        graphics.drawString(self.COPYRIGHT, halfWidth &- self.beginWidth, height &- self.COPYRIGHT_Y, self.anchor)
    }
}

