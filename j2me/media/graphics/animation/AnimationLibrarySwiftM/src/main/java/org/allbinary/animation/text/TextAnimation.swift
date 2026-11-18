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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class TextAnimation: IndexedAnimation, UpdateMyFontInterface {
    fileprivate var updateMyFontProcessor: MyFontProcessor! = nil
    public var myFontProcessor: MyFontProcessor! = nil
    public var textArrayP: JArray<String?>! = nil
    fileprivate var anchor: Int32 = 0
    fileprivate var fontHeight: Int32 = 0
    fileprivate var offsetY: Int32 = 0
    fileprivate var textChangeListener: TextChangeListener! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    self.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
    self.anchor = Anchor.TOP_LEFT
    self.fontHeight = 0
    self.offsetY = 0
    self.textChangeListener = TextChangeListener.getInstance()
    }
    

    public init(_ text: String!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.setText(text)
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let font: Font! = graphics.getFont()
        self.fontHeight = font.getHeight()
        let adjustedFontHeight: Int32 = JMath.toInt32(Double(-(Double(self.fontHeight) * 2.00)))
        self.offsetY = (SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0)
        self.textChangeListener.onMeasure()
        self.textChangeListener = TextChangeListener.getInstance()
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open override func nextFrame() {
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.myFontProcessor.process(graphics)
        self.paintXYNoUpdate(graphics, x, y)
    }
    

    open func paintXYNoUpdate(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        let size: Int32 = self.textArrayP.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            graphics.drawString(self.textArrayP[index], x, y &+ self.offsetY &+ (index &* self.fontHeight), self.anchor)
            }
        }
    }
    

    open func setTextWithOnMeasure(_ text: String!, _ textChangeListener: TextChangeListener!) {
        self.setText(text)
        self.textChangeListener = textChangeListener
    }
    

    open func setText(_ text: String!) {
        let list: BasicArrayList! = BasicArrayListD()
        if (JString.length(text) > 0) {
            var index: Int32 = 0
            var startIndex: Int32 = 0
            var endIndex: Int32 = 0
            while (index >= 0) {
                startIndex = index
                index = JString.indexOf(text, UInt16(("\n" as Unicode.Scalar).value), startIndex)
                endIndex = index
                if (index < 0) {
                    endIndex = JString.length(text)
                }
                list.add(jBoxString(JString.substring(text, startIndex, endIndex)))
                if (index < 0) {
                    break
                }
                index &+= 1
            }
        }
        if (list.size() > 0) {
            let textArray: JArray<String?>! = JArray<String?>(list.size(), nil)
            let size: Int32 = list.size()
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                textArray[index] = jUnboxString(list.get(index))
                }
            }
            self.textArrayP = textArray
        } else {
            self.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        }
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    @discardableResult open func getTextArray() -> JArray<String?>! {
        return self.textArrayP
    }
    

    @discardableResult open func getFontHeight() -> Int32 {
        return self.fontHeight
    }
}

