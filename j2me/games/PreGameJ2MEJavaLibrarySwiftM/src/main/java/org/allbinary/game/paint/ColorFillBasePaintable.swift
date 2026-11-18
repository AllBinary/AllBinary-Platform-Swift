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
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorCompositeInterface
// import org.allbinary.graphics.paint.Paintable

open class ColorFillBasePaintable: Paintable, ColorCompositeInterface {
    public var basicColor: BasicColor! = nil
    public var colorP: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.basicColor = BasicColorFactory.getInstance().WHITE
    self.colorP = 0
    }
    

    public init(_ basicColor: BasicColor!) {
        super.init()
        self.initFields()
        self.setBasicColorP(basicColor)
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
        self.setColor(self.getBasicColorP().intValue())
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    @discardableResult open func getColor() -> Int32 {
        return self.colorP
    }
    

    open func setColor(_ color: Int32) {
        self.colorP = color
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
}

