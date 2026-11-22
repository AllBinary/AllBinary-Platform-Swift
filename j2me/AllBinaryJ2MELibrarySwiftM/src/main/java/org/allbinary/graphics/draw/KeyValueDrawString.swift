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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.logic.string.StringUtil

open class KeyValueDrawString: JObject, UpdateMyFontInterface {
    fileprivate var myFontProcessor: MyFontProcessor! = nil
    fileprivate var LABEL: String! = nil
    fileprivate var labelX: Int32 = 0
    fileprivate var valueX: Int32 = 0
    fileprivate var value: String! = nil

    private func initFields() {
    self.myFontProcessor = UpdateMyFontProcessor(self)
    
    
    self.valueX = 0
    self.value = StringUtil.getInstance().EMPTY_STRING
    }
    

    public init(_ label: String!, _ x: Int32) {
        super.init()
        self.initFields()
        self.LABEL = label
        self.labelX = x
    }
    

    open func updateMeasurement(_ graphics: Graphics!) {
        let labelWidth: Int32 = graphics.getFont().stringWidth(self.LABEL) &- JString.length(self.LABEL)
        self.valueX = labelWidth &+ self.labelX
        self.myFontProcessor = MyFontProcessor.getInstance()
    }
    

    open func paint(_ graphics: Graphics!, _ y: Int32) {
        self.myFontProcessor.process(graphics)
        graphics.drawString(self.LABEL, self.labelX, y, 0)
        graphics.drawString(self.value, self.valueX, y, 0)
    }
    

    open func update(_ value: String!) {
        self.value = value
    }
}

