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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.Layer

open class PaintableLayerComposite: Paintable {
    fileprivate var paintableArray: JArray<Layer?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ paintableArray: JArray<Layer?>!) {
        super.init()
        self.initFields()
        self.paintableArray = paintableArray
    }
    

    open override func paint(_ graphics: Graphics!) {
        do {
            var index: Int32 = self.paintableArray.length
            while (jPreDecrement(&index) >= 0) {
            self.paintableArray[index]!.paint(graphics)
            }
        }
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        var paintableInterface: PaintableInterface! = nil
        do {
            var index: Int32 = self.paintableArray.length
            while (jPreDecrement(&index) >= 0) {
            paintableInterface = (self.paintableArray[index] as Any as? PaintableInterface)
            paintableInterface.paintThreed(graphics)
            }
        }
    }
}

