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
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.game.displayable.canvas.GameCommandCanvas
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.PlatformKeyFactory
// import org.allbinary.game.input.event.RawKeyEventListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.validation.TextItemVisitor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

open class CustomTextBox: GameCommandCanvas, RawKeyEventListener {
    fileprivate var textFieldItem: ABTextFieldItem! = nil
    fileprivate var inputFactory: InputFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    self.inputFactory = InputFactory.getInstance()
    }
    

    public init(_ cmdListener: CommandListener!, _ label: String!, _ text: String!, _ maxSize: Int32, _ constraints: Int32, _ font: Font!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        let textFieldItem: ABTextFieldItem! = ABTextFieldItem(self, TextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        textFieldItem.setString(text)
        self.textFieldItem = textFieldItem
        self.setTitle(label)
    }
    

    open func submit() {
    }
    

    open override func onEventRaw(_ keyCode: Int32, _ deviceId: Int32, _ repeated: Bool) {
        self.logUtil.putF(StringMaker().append(self.commonStrings.START).appendint(keyCode).toString(), self, "onEvent")
        self.keyPressedByDevice(keyCode, deviceId)
    }
    

    open override func keyPressed(_ keyCode: Int32) {
        self.keyPressedByDevice(keyCode, 0)
    }
    

    open override func keyReleased(_ keyCode: Int32) {
        self.keyReleasedByDevice(keyCode, 0)
    }
    

    open override func keyRepeated(_ keyCode: Int32) {
        self.keyRepeatedByDevice(keyCode, 0)
    }
    

    open override func keyPressedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
        do {
            self.logUtil.putF(StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), self, self.gameInputStrings.KEY_PRESSED)
            let platformKeyFactory: PlatformKeyFactory! = PlatformKeyFactory.getInstance()
            let input: Input! = self.inputFactory.getInstanceById(keyCode)
            if (platformKeyFactory.isSubmission(input)) {
                self.submit()
            } else {
                self.textFieldItem.keyPressed(keyCode)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func keyReleasedByDevice(_ keyCode: Int32, _ deviceId: Int32) {
    }
    

    open override func paint(_ graphics: Graphics!) {
        graphics.setColor(self.backgroundColor)
        graphics.fillRect(0, 0, self.displayInfo.getLastWidth(), self.displayInfo.getLastHeight())
        graphics.setColor(self.foregroundColor)
        if (!J2MEUtil.isJ2ME()) {
            graphics.drawString(self.getTitle(), 8, 1, 0)
        }
        self.paintXY(graphics, 8, graphics.getFont().getHeight() &+ 2)
        super.paint(graphics)
    }
    

    open func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.textFieldItem.paintXY(graphics, x, y)
    }
    

    @discardableResult open func getTextFieldItem() -> ABTextFieldItem! {
        return self.textFieldItem
    }
}

