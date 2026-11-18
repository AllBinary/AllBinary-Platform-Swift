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
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.InitUpdatePaintable

open class GamePerformanceInitUpdatePaintable: InitUpdatePaintable, UpdateMyFontInterface {
    fileprivate var halfHeight: Int32 = 0
    fileprivate var yArray: JArray<Int32>! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var baseRefreshHelperCharArray: JArray<JArray<UInt16>?>! = nil
    fileprivate var defaultStringWidth: Int32 = 0
    fileprivate var RED: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight()
    self.yArray = JArray<Int32>([self.halfHeight &+ 30, self.halfHeight &+ 30, self.halfHeight &+ 30 &+ 15, self.halfHeight &+ 30 &+ 15, self.halfHeight &+ 30 &+ 30, self.halfHeight &+ 30 &+ 30, self.halfHeight &+ 30 &+ 45, self.halfHeight &+ 30 &+ 45])
    self.myFontProcessor = UpdateMyFontProcessor(self)
    self.baseRefreshHelperCharArray = JArray<JArray<UInt16>?>(0, factory: { JArray<UInt16>(0, 0) })
    self.defaultStringWidth = 0
    self.RED = BasicColorFactory.getInstance().RED.intValue()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2)
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func `init`() {
    }
    

    open override func update() {
        self.baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        graphics.setColor(self.RED)
        var charArray: JArray<UInt16>! = nil
        var charArray2: JArray<UInt16>! = nil
        var size2: Int32 = 0
        var size3: Int32 = 0
        let size: Int32 = self.baseRefreshHelperCharArray.length &- 2
        do {
            var index: Int32 = size
            while (index >= 0) {
                defer { index = index &- 2 }
            charArray = self.baseRefreshHelperCharArray[index]
            charArray2 = self.baseRefreshHelperCharArray[index &+ 1]
            size2 = charArray.length
            size3 = charArray2.length
            graphics.drawChars(charArray, 0, size2, 0, self.yArray[index], 0)
            graphics.drawChars(charArray2, 0, size3, size2 &* self.defaultStringWidth, self.yArray[index &+ 1], 0)
            }
        }
    }
}

