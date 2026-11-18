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
// package org.allbinary.bounds

import J2SEForSwiftLibrary
// import org.allbinary.graphics.Rectangle

open class RectangleLayerBounds: LayerBounds {
    

    public override init(_ rectangle: Rectangle!) {
        super.init(rectangle)
    }
    

    open override func visit(_ boundsVisitorInterface: BoundsVisitorInterface!) {
        if (boundsVisitorInterface.getX() > self.rectangle.getMaxX()) {
            boundsVisitorInterface.maxX()
        }
        if (boundsVisitorInterface.getY() > self.rectangle.getMaxY()) {
            boundsVisitorInterface.maxY()
        }
        if (boundsVisitorInterface.getX() < self.rectangle.getPoint().getX()) {
            boundsVisitorInterface.minX()
        }
        if (boundsVisitorInterface.getY() < self.rectangle.getPoint().getY()) {
            boundsVisitorInterface.minY()
        }
    }
}

