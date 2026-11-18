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
// package org.allbinary.game.paint

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

open class ColorFillPaintable: ColorFillBasePaintable {
    public var displayInfoSingleton: DisplayInfoSingleton! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    }
    

    public override init(_ basicColor: BasicColor!) {
        super.init(basicColor)
        self.initFields()
    }
    

    open override func paint(_ graphics: Graphics!) {
        graphics.setColor(self.colorP)
        graphics.fillRect(0, 0, self.displayInfoSingleton.getLastWidth(), self.displayInfoSingleton.getLastHeight())
    }
}

