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
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class RectangleCollisionUtil: JObject {
    fileprivate static let instance: RectangleCollisionUtil! = RectangleCollisionUtil()
    

    @discardableResult open class func getInstance() -> RectangleCollisionUtil! {
        return RectangleCollisionUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func isCollision(_ rectX1: Int32, _ rectY1: Int32, _ rectX2: Int32, _ rectY2: Int32, _ rect2X1: Int32, _ rect2Y1: Int32, _ rect2X2: Int32, _ rect2Y2: Int32) -> Bool {
        if (rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1) {
            return false
        } else {
            return true
        }
    }
    

    @discardableResult open func isInside(_ rectX1: Int32, _ rectY1: Int32, _ rectX2: Int32, _ rectY2: Int32, _ x: Int32, _ y: Int32) -> Bool {
        if (x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1) {
            return false
        } else {
            return true
        }
    }
}

