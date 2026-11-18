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
// package org.allbinary.game.ag.layer.hud.basic

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.math.PrimitiveLongSingleton
// import org.allbinary.logic.math.PrimitiveLongUtil

open class NumberStringHud: BasicHud, PaintableInterface {
    fileprivate var primitiveLongUtil: PrimitiveLongUtil! = nil
    fileprivate var prependString: String! = nil
    fileprivate var PREPEND_STRING: JArray<UInt16>! = nil
    fileprivate var value: Int32 = 0
    fileprivate var max: Int32 = 0
    fileprivate var offset: Int32 = 0
    fileprivate var valueString: JArray<UInt16>! = nil
    fileprivate var valueTotalDigits: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    
    self.offset = 0
    
    self.valueTotalDigits = 0
    }
    

    public init(_ prependString: String!, _ max: Int32, _ location: Int32, _ direction: Int32, _ bufferZone: Int32, _ basicColor: BasicColor!) {
        super.init(location, direction, bufferZone, basicColor)
        self.initFields()
        self.prependString = prependString
        self.PREPEND_STRING = JString.toCharArray(prependString)
        self.valueString = PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0]
        self.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(max &+ 1)
        self.max = max
        self.value = 0
        if (direction == 0) {
            jThrow(JException("RuntimeException", BasicHudFactory.getInstance().DIRECTION_EXCEPTION))
        }
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.offset = font.stringWidth(self.prependString) + MyFontProcessor.defaultCharWidth(font)
        super.updateMeasurement(graphics)
    }
    

    @discardableResult open func get() -> Int32 {
        return self.value
    }
    

    open func add(_ value: Int32) {
        self.set(self.value &+ value)
    }
    

    open func set(_ value: Int32) {
        self.value = value
        if (self.value > self.max) {
            self.value = 0
        }
        self.valueString = self.primitiveLongUtil.getCharArray(self.value)
        self.valueTotalDigits = self.primitiveLongUtil.getCurrentTotalDigits()
    }
    

    open func reduce(_ value: Int32) {
        self.set(self.value &- value)
    }
    

    open func paint(_ graphics: Graphics!) {
        super.paintDX(graphics, self.PREPEND_STRING, 0, self.PREPEND_STRING.length, self.valueString, 0, self.valueTotalDigits, self.offset)
    }
    

    open func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.myFontProcessor.process(graphics)
        let charArray: JArray<UInt16>! = self.PREPEND_STRING
        let len: Int32 = self.PREPEND_STRING.length
        let charArray2: JArray<UInt16>! = self.valueString
        let len2: Int32 = self.valueTotalDigits
        self.basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        graphics.drawChars(charArray, 0, len, x, y, 0)
        graphics.drawChars(charArray2, 0, len2, x &- self.offset, y, 0)
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
}

