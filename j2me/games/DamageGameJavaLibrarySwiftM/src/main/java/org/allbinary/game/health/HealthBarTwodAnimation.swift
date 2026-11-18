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
// package org.allbinary.game.health

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.layer.AllBinaryLayer

open class HealthBarTwodAnimation: HealthBarAnimation {
    

    public override init(_ layerInterface: AllBinaryLayer!, _ location: Int32) {
        super.init(layerInterface, location)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        let ax: Int32 = self.allbinaryLayer.getViewPosition().getX()
        self.basicSetColorUtil.setBasicColorP3(graphics, self.basicColor, self.colorP)
        graphics.fillRect(ax, self.getY() &- 1, self.x2, self.thickness)
    }
}

