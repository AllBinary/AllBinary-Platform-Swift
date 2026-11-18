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
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.view.ViewPositionBase

open class GameLayerUtil: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func isOnScreen(_ layer: AllBinaryLayer!) -> Bool {
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let viewPosition: ViewPositionBase! = layer.getViewPosition()
        return GameLayerUtil.isInside(viewPosition.getX(), viewPosition.getY(), viewPosition.getX2(), viewPosition.getY2(), 0, 0, displayInfo.getLastWidth(), displayInfo.getLastHeight())
    }
    

    @discardableResult open class func isInside(_ rectX1: Int32, _ rectY1: Int32, _ rectX2: Int32, _ rectY2: Int32, _ rect2X1: Int32, _ rect2Y1: Int32, _ rect2X2: Int32, _ rect2Y2: Int32) -> Bool {
        if (rectX1 > rect2X1 && rectX2 < rect2X2 && rectY1 > rect2Y1 && rectY2 < rect2Y2) {
            return true
        } else {
            return false
        }
    }
}

