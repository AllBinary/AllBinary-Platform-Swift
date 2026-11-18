// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Font
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.visitor.Visitor

open class ABTextFieldItem: ABTextItem {
    fileprivate var font: Font! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ canvas: Canvas!, _ visitor: Visitor!, _ label: String!, _ value: String!, _ maxSize: Int32, _ layout: Int32, _ altText: String!, _ font: Font!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
        self.font = font
    }
    

    @discardableResult open override func getLabel() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    open override func setLabel(_ label: String!) {
    }
    

    @discardableResult open func getString() -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    open func setString(_ string: String!) {
    }
    

    open func setFocus(_ state: Bool) {
    }
    

    @discardableResult open func getFontHeight() -> Int32 {
        return self.font.getHeight()
    }
    

    open func setBackgroundBasicColorP(_ basicColor: BasicColor!) {
    }
    

    open func setForegroundBasicColorP(_ basicColor: BasicColor!) {
    }
}

