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
// package org.allbinary.media

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.time.TimeDelayHelper

open class AllBinaryVisualDebugVibration: AllBinaryVibrationME, UpdateMyFontInterface {
    fileprivate var displayInfoSingleton: DisplayInfoSingleton! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var VIBRATING: String! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var anchor: Int32 = 0
    fileprivate var width: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    self.timeDelayHelper = TimeDelayHelper(Integer.MAX_VALUE)
    self.VIBRATING = "Vibrating"
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.anchor = Anchor.TOP_LEFT
    self.width = 0
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.width = font.stringWidth(self.VIBRATING)
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func vibrate(_ duration: Int32, _ type: Int32, _ volume: Int32) {
        self.timeDelayHelper.delay = duration
    }
    

    open func paint(_ graphics: Graphics!) {
        if (self.timeDelayHelper.isTimeTNT()) {
            self.timeDelayHelper.delay = Integer.MAX_VALUE
            self.myFontProcessor.process(graphics)
            graphics.drawString(self.VIBRATING, self.displayInfoSingleton.getLastHalfWidth() &- (self.width >> 1), 0, self.anchor)
        }
    }
}

