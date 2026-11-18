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

open class StaticViewPosition: ViewPosition {
    

    public override init(_ x: Int32, _ y: Int32, _ z: Int32) {
        super.init(x, y, z)
    }
    

    @discardableResult open override func getX() -> Int32 {
        return self.getRawX()
    }
    

    @discardableResult open override func getY() -> Int32 {
        return self.getRawY()
    }
    

    @discardableResult open override func getZ() -> Int32 {
        return self.getRawZ()
    }
}

