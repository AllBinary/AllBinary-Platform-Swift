/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.layer.AllBinaryLayer

open class ViewPosition: ViewPositionBase {
    fileprivate var allbinaryLayer: AllBinaryLayer! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.allbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER
    }
    

    @discardableResult open class func getInstanceD() -> ViewPosition! {
        return ViewPosition(0, 0, 0)
    }
    

    public override init(_ x: Int32, _ y: Int32, _ z: Int32) {
        super.init(x, y, z)
        self.initFields()
    }
    

    @discardableResult open override func getX() -> Int32 {
        return self.allbinaryLayer.getXP()
    }
    

    @discardableResult open override func getY() -> Int32 {
        return self.allbinaryLayer.getYP()
    }
    

    @discardableResult open override func getZ() -> Int32 {
        return self.allbinaryLayer.getZP()
    }
    

    @discardableResult open override func getX2() -> Int32 {
        return self.getX() &+ self.allbinaryLayer.getWidth()
    }
    

    @discardableResult open override func getY2() -> Int32 {
        return self.getY() &+ self.allbinaryLayer.getHeight()
    }
    

    @discardableResult open override func getZ2() -> Int32 {
        return Int32(truncatingIfNeeded: (Int64(truncatingIfNeeded: self.getZ()) &+ self.allbinaryLayer.getDepth()))
    }
    

    open override func setAllbinaryLayer(_ allbinaryLayer: JObject!) {
        self.allbinaryLayer = (allbinaryLayer as! AllBinaryLayer)
    }
}

