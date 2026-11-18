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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps

open class Rectangle: JObject {
    fileprivate var point: GPoint! = nil
    fileprivate var width: Int32 = 0
    fileprivate var height: Int32 = 0

    private func initFields() {
    
    
    
    }
    

    public init(_ point: GPoint!, _ width: Int32, _ height: Int32) {
        super.init()
        self.initFields()
        self.point = point
        self.width = width
        self.height = height
    }
    

    @discardableResult open func getPoint() -> GPoint! {
        return self.point
    }
    

    open func setPoint(_ point: GPoint!) {
        self.point = point
    }
    

    @discardableResult open func getMaxX() -> Int32 {
        return self.point.getX() &+ self.width
    }
    

    @discardableResult open func getMaxY() -> Int32 {
        return self.point.getY() &+ self.height
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return self.width
    }
    

    open func setWidth(_ width: Int32) {
        self.width = width
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return self.height
    }
    

    open func setHeight(_ height: Int32) {
        self.height = height
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(self.getPoint().toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
        stringBuffer.append(" MaxX: ")
        stringBuffer.appendint(self.getMaxX())
        stringBuffer.append(" MaxY: ")
        stringBuffer.appendint(self.getMaxY())
        return stringBuffer.toString()
    }
}

