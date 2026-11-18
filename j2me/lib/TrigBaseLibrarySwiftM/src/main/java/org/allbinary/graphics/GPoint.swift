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
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps

open class GPoint: JObject {
    fileprivate static let POINT_LABEL: String! = "Point: "
    fileprivate var x: Int32 = 0
    fileprivate var y: Int32 = 0
    fileprivate var z: Int32 = 0

    private func initFields() {
    
    
    
    }
    

    @discardableResult open class func getInstance(_ point: GPoint!) -> GPoint! {
        return GPoint(point.getX(), point.getY(), point.getZ())
    }
    

    public init(_ x: Int32, _ y: Int32, _ z: Int32) {
        super.init()
        self.initFields()
        self.x = x
        self.y = y
        self.z = z
    }
    

    @discardableResult open func getX() -> Int32 {
        return self.x
    }
    

    @discardableResult open func getY() -> Int32 {
        return self.y
    }
    

    @discardableResult open func getZ() -> Int32 {
        return self.z
    }
    

    @discardableResult open func getRawX() -> Int32 {
        return self.x
    }
    

    @discardableResult open func getRawY() -> Int32 {
        return self.y
    }
    

    @discardableResult open func getRawZ() -> Int32 {
        return self.z
    }
    

    @discardableResult open override func toString() -> String! {
        return GPoint.toStringStatic(self.getX(), self.getY(), self.getZ())
    }
    

    @discardableResult open class func toStringStatic(_ x: Int32, _ y: Int32, _ z: Int32) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let positionStrings: PositionStrings! = PositionStrings.getInstance()
        stringBuffer.append(GPoint.POINT_LABEL)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(x)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(y)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(z)
        return stringBuffer.toString()
    }
}

