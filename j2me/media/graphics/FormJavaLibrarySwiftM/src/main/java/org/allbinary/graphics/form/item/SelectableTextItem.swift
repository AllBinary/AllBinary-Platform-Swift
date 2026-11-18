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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor

open class SelectableTextItem: ABTextItem {
    

    public override init(_ label: String!, _ layout: Int32, _ altText: String!, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) {
        super.init(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    }
    

    @discardableResult open override func isFocusable() -> Bool {
        return true
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.myFontProcessor.process(graphics)
        let stringComponent: ABStringComponent! = self.getLabelStringComponent()
        if (stringComponent != nil) {
            graphics.setColor(stringComponent.getForegroundBasicColor().intValue())
        }
        graphics.drawString(self.getLabel(), x &+ 2, y, 0)
    }
}

