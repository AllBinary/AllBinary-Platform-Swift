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
// package org.allbinary.view

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint

open class ViewPositionBase: GPoint {
    public static let NULL_VIEW_POSITION: ViewPositionBase! = ViewPositionBase(0, 0, 0)
    

    public override init(_ x: Int32, _ y: Int32, _ z: Int32) {
        super.init(x, y, z)
    }
    

    @discardableResult open func getX2() -> Int32 {
        return self.getX()
    }
    

    @discardableResult open func getY2() -> Int32 {
        return self.getY()
    }
    

    @discardableResult open func getZ2() -> Int32 {
        return self.getZ()
    }
    

    open func setAllbinaryLayer(_ allbinaryLayer: JObject!) {
    }
}

