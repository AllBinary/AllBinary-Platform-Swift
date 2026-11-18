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
// package org.allbinary.graphics

import J2SEForSwiftLibrary

open class CustomGPoint: GPoint {
    public static let NULL_CUSTOM_POINT: CustomGPoint! = CustomGPoint(0, 0, 0)
    fileprivate var cx: Int32 = 0
    fileprivate var cy: Int32 = 0
    fileprivate var cz: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.cx = 0
    self.cy = 0
    self.cz = 0
    }
    

    @discardableResult open override class func getInstance(_ point: GPoint!) -> CustomGPoint! {
        return CustomGPoint(point.getX(), point.getY(), point.getZ())
    }
    

    @discardableResult open class func getInstance3(_ x: Int32, _ y: Int32) -> CustomGPoint! {
        return CustomGPoint(x, y, 3)
    }
    

    public override init(_ x: Int32, _ y: Int32, _ z: Int32) {
        super.init(x, y, z)
        self.initFields()
    }
    

    open func setX(_ x: Int32) {
        self.cx = x
    }
    

    @discardableResult open override func getX() -> Int32 {
        return self.cx
    }
    

    open func setY(_ y: Int32) {
        self.cy = y
    }
    

    @discardableResult open override func getY() -> Int32 {
        return self.cy
    }
    

    open func setZ(_ z: Int32) {
        self.cz = z
    }
    

    @discardableResult open override func getZ() -> Int32 {
        return self.cz
    }
}

