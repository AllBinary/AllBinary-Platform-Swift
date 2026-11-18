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
// package org.allbinary.game.graphics.hud

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings

open class BasicHud_1: JObject, UpdateMyFontInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var canvasStrings: CanvasStrings! = nil
    public var basicSetColorUtil: BasicColorSetUtil! = nil
    fileprivate var displayInfo: DisplayInfoSingleton! = nil
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var location: Int32 = 0
    fileprivate var direction: Int32 = 0
    fileprivate var bufferZone: Int32 = 0
    fileprivate var hudGraphicsPosition: HudGraphicsPosition! = nil
    fileprivate var x: Int32 = 0
    fileprivate var y: Int32 = 0
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var color: Int32 = 0
    public var updateMaxWidth: Int32 = 0
    public var updateMaxHeight: Int32 = 0
    public var offsetY: Int32 = 0

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.canvasStrings = CanvasStrings.getInstance()
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.displayInfo = DisplayInfoSingleton.getInstance()
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.location = 0
    self.direction = 0
    self.bufferZone = 0
    self.hudGraphicsPosition = HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION
    self.x = 0
    self.y = 0
    self.basicColor = BasicColorFactory.getInstance().BLACK
    
    self.updateMaxWidth = 0
    self.updateMaxHeight = 0
    self.offsetY = 0
    }
    

    public init(_ location: Int32, _ direction: Int32, _ bufferZone: Int32, _ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.setLocation(location)
        self.setDirection(direction)
        self.setBufferZone(bufferZone)
        self.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent)
        self.setBasicColorP(basicColor)
        self.color = basicColor.intValue()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        do {
            self.hudGraphicsPosition = self.getHudGraphicsPositionWH(self.displayInfo.getLastWidth(), self.displayInfo.getLastHeight(), self.updateMaxWidth, self.updateMaxHeight)
            self.x = self.hudGraphicsPosition.getPoint().getX()
            self.setY(self.hudGraphicsPosition.getPoint().getY())
        } /* catch (Exception e): a thrown Java exception stops the program */
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    @discardableResult open func getLocation() -> Int32 {
        return self.location
    }
    

    @discardableResult open func getDirection() -> Int32 {
        return self.direction
    }
    

    @discardableResult open func getHudGraphicsPositionWH(_ width: Int32, _ height: Int32, _ maxWidth: Int32, _ maxHeight: Int32) -> HudGraphicsPosition! {
        var x: Int32 = 0
        var y: Int32 = 0
        var anchor: Int32 = 0
        let basicHudFactory: BasicHudFactory! = BasicHudFactory.getInstance()
        if (basicHudFactory.BOTTOMLEFT == self.getLocation()) {
            x = self.bufferZone &+ 2
            y = height &- maxHeight &- self.bufferZone
            anchor = Graphics.BOTTOM & Graphics.LEFT
        } else if (basicHudFactory.BOTTOMRIGHT == self.getLocation()) {
            x = width &- maxWidth
            y = height &- maxHeight &- self.bufferZone
            anchor = Graphics.BOTTOM & Graphics.RIGHT
        } else if (basicHudFactory.TOPLEFT == self.getLocation()) {
            x = self.bufferZone &+ 2
            y = self.bufferZone &+ 5
            anchor = Anchor.TOP_LEFT
        } else if (basicHudFactory.TOPRIGHT == self.getLocation()) {
            x = width &- maxWidth
            y = self.bufferZone &+ 5
            anchor = Graphics.TOP & Graphics.RIGHT
        } else if (basicHudFactory.TOPCENTER == self.getLocation()) {
            x = ((width &- maxWidth) / 2)
            y = self.bufferZone &+ 5
            anchor = Graphics.TOP & Graphics.HCENTER
        } else if (basicHudFactory.BOTTOMCENTER == self.getLocation()) {
            x = ((width &- maxWidth) / 2)
            y = height &- maxHeight &- self.bufferZone
            anchor = Graphics.BOTTOM & Graphics.HCENTER
        } else if (basicHudFactory.ABSOLUTE == self.getLocation()) {
            x = maxHeight
            y = maxWidth
            anchor = 0
        }
        return HudGraphicsPosition(self.getPoint(x, y), anchor)
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onDisplayChangeEvent(_ displayChangeEvent: DisplayChangeEvent!) {
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    @discardableResult open func getPoint(_ x: Int32, _ y: Int32) -> GPoint! {
        return PointFactory.getInstance().createXY(x, y)
    }
    

    @discardableResult open func getBufferZone() -> Int32 {
        return self.bufferZone
    }
    

    open func setBufferZone(_ bufferZone: Int32) {
        self.bufferZone = bufferZone
    }
    

    open func setLocation(_ location: Int32) {
        self.location = location
    }
    

    open func setDirection(_ direction: Int32) {
        self.direction = direction
    }
    

    @discardableResult open func getHudGraphicsPosition() -> HudGraphicsPosition! {
        return self.hudGraphicsPosition
    }
    

    @discardableResult open func getColor() -> Int32 {
        return self.color
    }
    

    @discardableResult open func getX() -> Int32 {
        return self.x
    }
    

    open func setX(_ x: Int32) {
        self.x = x
    }
    

    open func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    open func setY(_ y: Int32) {
        self.y = y
    }
    

    @discardableResult open func getY() -> Int32 {
        return self.y
    }
    

    open func paintSSO(_ graphics: Graphics!, _ string: String!, _ string2: String!, _ offset: Int32) {
        self.myFontProcessor.process(graphics)
        self.basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        graphics.drawString(string, self.x, self.getY(), self.hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, self.x &+ offset, self.getY(), self.hudGraphicsPosition.getAnchor())
    }
    

    open func paintSSOO(_ graphics: Graphics!, _ string: String!, _ string2: String!, _ offset: Int32, _ offset2: Int32) {
        self.myFontProcessor.process(graphics)
        graphics.setColor(self.getColor())
        graphics.drawString(string, self.x &+ offset, self.getY(), self.hudGraphicsPosition.getAnchor())
        graphics.drawString(string2, self.x &+ offset2, self.getY(), self.hudGraphicsPosition.getAnchor())
    }
    

    open func paintDXY(_ graphics: Graphics!, _ charArray: JArray<UInt16>!, _ offset: Int32, _ len: Int32, _ charArray2: JArray<UInt16>!, _ offset2: Int32, _ len2: Int32, _ xOffset: Int32, _ xOffset2: Int32) {
        self.myFontProcessor.process(graphics)
        self.basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        let y: Int32 = self.getY()
        graphics.drawChars(charArray, offset, len, self.x &+ xOffset, y, self.hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, self.x &+ xOffset2, y, self.hudGraphicsPosition.getAnchor())
    }
    

    open func paintDX(_ graphics: Graphics!, _ charArray: JArray<UInt16>!, _ offset: Int32, _ len: Int32, _ charArray2: JArray<UInt16>!, _ offset2: Int32, _ len2: Int32, _ xOffset: Int32) {
        self.myFontProcessor.process(graphics)
        self.basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        let y: Int32 = self.getY()
        graphics.drawChars(charArray, offset, len, self.x, y, self.hudGraphicsPosition.getAnchor())
        graphics.drawChars(charArray2, offset2, len2, self.x &+ xOffset, y, self.hudGraphicsPosition.getAnchor())
    }
    

    open func paintOffsetAndLength(_ graphics: Graphics!, _ charArray: JArray<UInt16>!, _ offset: Int32, _ len: Int32) {
        self.myFontProcessor.process(graphics)
        self.basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        let y: Int32 = self.getY()
        graphics.drawChars(charArray, offset, len, self.x, y, self.hudGraphicsPosition.getAnchor())
    }
    

    open func paintString(_ graphics: Graphics!, _ string: String!) {
        self.myFontProcessor.process(graphics)
        self.basicSetColorUtil.setBasicColorP(graphics, self.getBasicColorP())
        let y: Int32 = self.getY() &+ self.offsetY
        graphics.drawString(string, self.x, y, self.hudGraphicsPosition.getAnchor())
    }
}

