// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor

open class CustomCustomItem: ABCustomItem, UpdateMyFontInterface {
    public var updateMyFontProcessor: MyFontProcessor! = nil
    public var myFontProcessor: MyFontProcessor! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.updateMyFontProcessor = UpdateMyFontProcessor(self)
    self.myFontProcessor = self.updateMyFontProcessor
    }
    

    public override init(_ label: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(label, backgroundBasicColor, foregroundBasicColor)
        self.initFields()
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
    }
}

