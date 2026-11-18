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
// package org.allbinary.graphics.draw

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor

open class CanvasDrawLineString: JObject, UpdateMyFontInterface {
    public static let NULL_CANVAS_DRAW_LINE_STRING: CanvasDrawLineString! = CanvasDrawLineString(0, 0)
    fileprivate var drawStringUtil: DrawStringUtil! = nil
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var x: Int32 = 0
    fileprivate var y: Int32 = 0
    fileprivate var fontHeight: Int32 = 0

    private func initFields() {
    self.drawStringUtil = DrawStringUtil.getInstance()
    self.myFontProcessor = UpdateMyFontProcessor(self)
    
    
    self.fontHeight = 0
    }
    

    public init(_ x: Int32, _ y: Int32) {
        super.init()
        self.initFields()
        self.x = x
        self.y = y
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.fontHeight = font.getHeight()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func paint(_ graphics: Graphics!, _ string: String!, _ line: Int32) {
        self.myFontProcessor.process(graphics)
        self.drawStringUtil.drawCenterString(graphics, string, 0, JString.length(string), self.x, self.y &+ (line &* self.fontHeight))
    }
}

