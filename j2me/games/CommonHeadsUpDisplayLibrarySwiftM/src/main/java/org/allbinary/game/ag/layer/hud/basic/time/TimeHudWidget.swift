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
// package org.allbinary.game.ag.layer.hud.basic.time

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.logic.math.PrimitiveLongSingleton

open class TimeHudWidget: BasicHud {
    fileprivate var TIME_STRING: String! = nil
    fileprivate var TIME_CHAR_ARRAY: JArray<UInt16>! = nil
    fileprivate var offset: Int32 = 0
    fileprivate var string: JArray<UInt16>! = nil
    fileprivate var totalDigits: Int32 = 0
    fileprivate var timer: HudTimer! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.TIME_STRING = "Time "
    self.TIME_CHAR_ARRAY = JArray<UInt16>([UInt16(("T" as Unicode.Scalar).value), UInt16(("i" as Unicode.Scalar).value), UInt16(("m" as Unicode.Scalar).value), UInt16(("e" as Unicode.Scalar).value), UInt16((" " as Unicode.Scalar).value)])
    self.offset = 0
    self.string = PrimitiveLongSingleton.getInstance().ZERO
    self.totalDigits = 1
    
    }
    

    @discardableResult open class func getInstance(_ location: Int32, _ direction: Int32, _ basicColor: BasicColor!, _ timer: HudTimer!) -> TimeHudWidget! {
        return TimeHudWidget(location, direction, 2, basicColor, timer)
    }
    

    public init(_ location: Int32, _ direction: Int32, _ bufferZone: Int32, _ basicColor: BasicColor!, _ timer: HudTimer!) {
        super.init(location, direction, bufferZone, basicColor)
        self.initFields()
        self.timer = timer
        self.set()
        self.updateMaxHeight = 14
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.updateMaxWidth = font.getSize() &* 5
        self.offset = font.stringWidth(self.TIME_STRING) &+ MyFontProcessor.defaultStringWidth(font, 3)
        super.updateMeasurement(graphics)
    }
    

    open func update() {
        self.timer.update()
        self.set()
    }
    

    fileprivate func set() {
        self.string = self.timer.getTimeChars()
        self.totalDigits = self.timer.getCurrentTotalDigits()
    }
    

    @discardableResult open func getTimer() -> HudTimer! {
        return self.timer
    }
    

    open func paint(_ graphics: Graphics!) {
        super.paintDX(graphics, self.TIME_CHAR_ARRAY, 0, self.TIME_CHAR_ARRAY.length, self.string, 0, self.totalDigits, self.offset)
    }
}

