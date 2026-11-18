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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.graphics.paint.Paintable

open class BasicPaintablesCanvas: GameCommandCanvas {
    fileprivate var paintableArray: JArray<Paintable?>! = nil
    fileprivate var colorFillPaintable: ColorFillBasePaintable! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ cmdListener: CommandListener!, _ name: String!, _ allBinaryGameLayerManager: AllBinaryGameLayerManager!, _ paintableArray: JArray<Paintable?>!) {
        super.init(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        self.initFields()
        self.paintableArray = paintableArray
        self.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.colorFillPaintable.paint(graphics)
        graphics.setColor(self.foregroundColor)
        do {
            var index: Int32 = self.paintableArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.paintableArray[index]!.paint(graphics)
            }
        }
        super.paint(graphics)
    }
}

