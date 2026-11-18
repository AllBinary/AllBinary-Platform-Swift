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
// package org.allbinary.game.ag.layer.hud.basic.level

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveLongUtil

open class LevelHudWidget: BasicHud, PaintableInterface {
    fileprivate var level: Int32 = 0
    fileprivate var maxlevel: Int32 = 0
    fileprivate var levelString: JArray<UInt16>! = nil
    fileprivate var levelNumberCharArray: JArray<UInt16>! = nil
    fileprivate var levelNumberTotalDigits: Int32 = 0
    fileprivate var offset: Int32 = 0
    fileprivate var primitiveLongUtil: PrimitiveLongUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    self.levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY
    self.levelNumberTotalDigits = 0
    self.offset = 0
    
    }
    

    @discardableResult open class func createHud(_ maxlevel: Int32, _ location: Int32, _ direction: Int32) -> LevelHudWidget! {
        return LevelHudWidget(maxlevel, location, direction)
    }
    

    public init(_ maxlevel: Int32, _ location: Int32, _ direction: Int32) {
        super.init(location, direction, 2, BasicColorFactory.getInstance().GREY)
        self.initFields()
        self.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        let LEVEL: String! = "Lv "
        self.levelString = JString.toCharArray(LEVEL)
        self.maxlevel = maxlevel
        self.level = maxlevel
        self.update()
        self.updateMaxHeight = 14
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.updateMaxWidth = font.getSize() * 4
        self.offset = font.charsWidth(self.levelString, 0, self.levelString.length) + font.getSize()
        super.updateMeasurement(graphics)
    }
    

    fileprivate func update() {
        self.levelNumberCharArray = self.primitiveLongUtil.getCharArray(self.level)
        self.levelNumberTotalDigits = self.primitiveLongUtil.getCurrentTotalDigits()
    }
    

    open func setLevel(_ level: Int32) {
        self.level = level
        self.update()
    }
    

    open func nextLevel() {
        self.level &+= 1
        self.update()
    }
    

    open func previousLevel() {
        self.level &-= 1
        if (self.level < 0) {
            self.level = 0
        }
        self.update()
    }
    

    @discardableResult open func isComplete() -> Bool {
        if (self.level <= self.maxlevel) {
            return false
        } else {
            return true
        }
    }
    

    open func paint(_ graphics: Graphics!) {
        super.paintDX(graphics, self.levelString, 0, self.levelString.length, self.levelNumberCharArray, 0, self.levelNumberTotalDigits, self.offset)
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
}

