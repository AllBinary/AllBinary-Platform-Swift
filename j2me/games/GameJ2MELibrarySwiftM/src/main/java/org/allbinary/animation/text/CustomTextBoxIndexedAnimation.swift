/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.game.input.event.RawKeyEventListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.form.item.CustomTextBox
// import org.allbinary.logic.string.StringUtil

open class CustomTextBoxIndexedAnimation: IndexedAnimation, RawKeyEventListener, UpdateMyFontInterface, TextInterface {
    fileprivate var customTextBox: CustomTextBox! = nil
    fileprivate var lastText: String! = nil
    public var hasChanged: Bool = false
    fileprivate var textChangeListener: TextChangeListener! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    self.lastText = StringUtil.getInstance().INIT_STRING
    self.hasChanged = true
    self.textChangeListener = TextChangeListener.getInstance()
    }
    

    public init(_ customTextBox: CustomTextBox!) {
        super.init(AnimationBehavior.getInstance())
        self.initFields()
        self.customTextBox = customTextBox
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        self.customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor)
    }
    

    open override func setBackgroundBasicColorP(_ basicColor: BasicColor!) {
        self.customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor)
    }
    

    open func setTextWithOnMeasure(_ text: String!, _ textChangeListener: TextChangeListener!) {
        self.setText(text)
        self.textChangeListener = textChangeListener
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        _ = graphics.getFont()
        self.textChangeListener.onMeasure()
        self.textChangeListener = TextChangeListener.getInstance()
    }
    

    open func setText(_ text: String!) {
        if (self.lastText != text) {
            self.hasChanged = true
            self.lastText = text
            self.customTextBox.getTextFieldItem().setString(text)
        }
    }
    

    @discardableResult open func getText() -> String! {
        return self.customTextBox.getTextFieldItem().getString()
    }
    

    open func onEventRaw(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
        self.customTextBox.onEventRaw(keyCode, deviceId, repeated)
    }
    

    @discardableResult open func getFontHeight() -> Int32 {
        return self.customTextBox.getTextFieldItem().getFontHeight()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.customTextBox.paintXY(graphics, x, y)
    }
    

    open override func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
    }
    

    @discardableResult open override func getWidth() -> Int32 {
        return super.getWidth()
    }
}

