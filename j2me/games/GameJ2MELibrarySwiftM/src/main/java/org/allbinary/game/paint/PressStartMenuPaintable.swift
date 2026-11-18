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
// import org.allbinary.AppletUtil
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.input.motion.button.TouchScreenFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.time.TimeDelayHelper

open class PressStartMenuPaintable: Paintable, UpdateMyFontInterface {
    fileprivate var displayInfo: DisplayInfoSingleton! = nil
    fileprivate var PRESS_START: String! = nil
    fileprivate var KEY_START: String! = nil
    fileprivate var MENU_START: String! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var startString: String! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var flash: Bool = false
    fileprivate var anchor: Int32 = 0
    fileprivate var beginWidth: Int32 = 0
    fileprivate var line: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfo = DisplayInfoSingleton.getInstance()
    self.PRESS_START = "Press Screen To Start"
    self.KEY_START = "Press or Click F2 To Begin"
    self.MENU_START = "Press Start From The Menu To Begin"
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.startString = StringUtil.getInstance().EMPTY_STRING
    self.timeDelayHelper = TimeDelayHelper(1100)
    self.flash = false
    self.anchor = Anchor.TOP_LEFT
    self.beginWidth = 0
    self.line = 0
    }
    

    public override init() {
        super.init()
        self.initFields()
        if (TouchScreenFactory.getInstance().isTouch()) {
            self.startString = self.PRESS_START
        } else if (AppletUtil.isAppletLoader(self)) {
            self.startString = self.KEY_START
        } else {
            self.startString = self.MENU_START
        }
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.beginWidth = (graphics.getFont().stringWidth(self.startString) >> 1)
        self.line = (4 &* MyFontProcessor.defaultCharWidth(font)) + (font.getHeight() >> 1)
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func paint(_ graphics: Graphics!) {
        if (self.timeDelayHelper.isTimeTNT()) {
            if (self.isFlash()) {
                self.setFlash(false)
            } else {
                self.setFlash(true)
            }
        }
        if (self.isFlash()) {
            self.myFontProcessor.process(graphics)
            graphics.drawString(self.startString, self.displayInfo.getLastHalfWidth() &- self.beginWidth, self.displayInfo.getLastHeight() &- self.line, self.anchor)
        }
    }
    

    fileprivate func setFlash(_ flash: Bool) {
        self.flash = flash
    }
    

    @discardableResult fileprivate func isFlash() -> Bool {
        return self.flash
    }
}

