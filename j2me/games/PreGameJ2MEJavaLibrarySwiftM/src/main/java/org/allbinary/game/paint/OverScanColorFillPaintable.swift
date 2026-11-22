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

open class OverScanColorFillPaintable: ColorFillPaintable {
    

    public override init(_ basicColor: BasicColor!) {
        super.init(basicColor)
    }
    

    open override func paint(_ graphics: Graphics!) {
        graphics.setColor(self.colorP)
        graphics.fillRect(-graphics.getClipX(), -graphics.getClipY(), self.displayInfoSingleton.getLastWidth() &+ (graphics.getClipX() &* 2), self.displayInfoSingleton.getLastHeight() &+ (graphics.getClipY() &* 2))
    }
}

