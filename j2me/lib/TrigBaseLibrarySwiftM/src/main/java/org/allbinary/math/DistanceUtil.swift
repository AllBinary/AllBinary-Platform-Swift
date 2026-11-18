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
// import org.allbinary.logic.math.MathUtil

open class DistanceUtil: JObject {
    fileprivate static let instance: DistanceUtil! = DistanceUtil()
    fileprivate var mathUtil: MathUtil! = nil

    private func initFields() {
    self.mathUtil = MathUtil.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> DistanceUtil! {
        return DistanceUtil.instance
    }
    

    @discardableResult open func getDistance(_ x1: Int32, _ y1: Int32, _ x2: Int32, _ y2: Int32) -> Int32 {
        let dx: Int32 = x1 &- x2
        let dy: Int32 = y1 &- y2
        return self.mathUtil.sqrt((dx &* dx) &+ (dy &* dy))
    }
}

