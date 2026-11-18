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
// package org.allbinary.graphics.paint

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor

open class SimpleTextPaintable: Paintable, UpdateMyFontInterface {
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var text: String! = nil
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var topScoresWidth: Int32 = 0
    fileprivate var fontHeight: Int32 = 0
    fileprivate var anchor: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    
    
    self.topScoresWidth = 0
    self.fontHeight = 0
    self.anchor = Anchor.TOP_LEFT
    }
    

    public init(_ text: String!, _ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.text = text
        self.basicColor = basicColor
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.topScoresWidth = (font.stringWidth(self.text) >> 1)
        self.fontHeight = font.getHeight()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        let width: Int32 = self.displayInfoSingleton.getLast()[self.displayInfoSingleton.WIDTH]
        graphics.setColor(self.getBasicColorP().intValue())
        graphics.drawString(self.text, (width >> 1) &- self.topScoresWidth, self.fontHeight, self.anchor)
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult fileprivate func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    open func setText(_ text: String!) {
        self.text = text
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    @discardableResult open func getText() -> String! {
        return self.text
    }
}

