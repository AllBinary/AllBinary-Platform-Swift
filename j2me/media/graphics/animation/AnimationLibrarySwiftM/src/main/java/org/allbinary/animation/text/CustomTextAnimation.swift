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
// package org.allbinary.animation.text

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.graphics.font.FontDebugFactory
// import org.allbinary.logic.string.StringUtil

open class CustomTextAnimation: TextAnimation, TextInterface {
    public var fontDebugFactory: FontDebugFactory! = nil
    public var fontSize: Int32 = 0
    public var font: Font! = nil
    fileprivate var lastText: String! = nil
    public var hasChanged: Bool = false
    fileprivate var textWidth: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.fontDebugFactory = FontDebugFactory.getInstance()
    
    
    self.lastText = StringUtil.getInstance().INIT_STRING
    self.hasChanged = true
    self.textWidth = 0
    }
    

    public init(_ text: String!, _ fontSize: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(text, animationBehavior)
        self.initFields()
        self.fontSize = fontSize
        self.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.myFontProcessor.process(graphics)
        let existingFont: Font! = graphics.getFont()
        self.fontDebugFactory.setFont(self.font, graphics)
        super.paintXYNoUpdate(graphics, x, y)
        self.fontDebugFactory.setFont(existingFont, graphics)
    }
    

    open override func setScale(_ scaleX: Float, _ scaleY: Float) {
        if (scaleX != scaleY) {
            jThrow(JException("RuntimeException", ""))
        }
        self.hasChanged = true
        self.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, JMath.toInt32(Double((Float(self.fontSize) * scaleX))))
    }
    

    open override func setTextWithOnMeasure(_ text: String!, _ textChangeListener: TextChangeListener!) {
        super.setTextWithOnMeasure(text, textChangeListener)
    }
    

    open override func setText(_ text: String!) {
        if (self.lastText != text) {
            self.hasChanged = true
            self.lastText = text
            super.setText(text)
        }
    }
    

    @discardableResult open func getText() -> String! {
        return self.lastText
    }
    

    @discardableResult open override func getWidth() -> Int32 {
        if (self.hasChanged) {
            self.textWidth = self.font.stringWidth(self.textArrayP[0])
            self.hasChanged = false
        }
        return self.textWidth
    }
    

    @discardableResult open override func getFontHeight() -> Int32 {
        return self.font.getHeight()
    }
}

