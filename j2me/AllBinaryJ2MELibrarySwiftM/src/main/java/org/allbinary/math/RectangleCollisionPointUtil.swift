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
// package org.allbinary.math

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.util.BasicArrayList

open class RectangleCollisionPointUtil: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func allPointsInside(_ rectX1: Int32, _ rectY1: Int32, _ rectX2: Int32, _ rectY2: Int32, _ list: BasicArrayList!) -> Bool {
        let rectangleCollisionUtil: RectangleCollisionUtil! = RectangleCollisionUtil.getInstance()
        var point: GPoint! = nil
        do {
            var index: Int32 = list.size()
            while (jPreDecrement(&index) >= 0) {
            point = (list.objectArray[index] as! GPoint)
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())) {
                return false
            }
            }
        }
        return true
    }
    

    @discardableResult open class func allPointsInsideCell(_ rectX1: Int32, _ rectY1: Int32, _ rectX2: Int32, _ rectY2: Int32, _ list: BasicArrayList!, _ xCellSize: Int32, _ yCellSize: Int32) -> Bool {
        let rectangleCollisionUtil: RectangleCollisionUtil! = RectangleCollisionUtil.getInstance()
        var point: GPoint! = nil
        do {
            var index: Int32 = list.size()
            while (jPreDecrement(&index) >= 0) {
            point = (list.objectArray[index] as! GPoint)
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX() &* xCellSize, point.getY() &* yCellSize)) {
                return false
            }
            }
        }
        return true
    }
}

