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
// package org.allbinary.graphics.pipeline

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.math.Angle
// import org.allbinary.math.NoDecimalTrigTable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BasicGraphicsPipeline: JObject {
    public var pointBasicArrayList: BasicArrayList! = nil
    fileprivate var noDecimalTrigTable: NoDecimalTrigTable! = nil

    private func initFields() {
    
    self.noDecimalTrigTable = NoDecimalTrigTable.getInstance()
    }
    

    public init(_ points: BasicArrayList!) {
        super.init()
        self.initFields()
        self.pointBasicArrayList = points
    }
    

    open func setInitMatrix(_ points: BasicArrayList!) {
        self.pointBasicArrayList = points
    }
    

    open func createMatrix() {
    }
    

    open func translate(_ x: Int32, _ y: Int32) {
        let newBasicArrayList: BasicArrayList! = BasicArrayListD()
        let size: Int32 = self.pointBasicArrayList.size()
        let pointFactory: PointFactory! = PointFactory.getInstance()
        var secondPoint: GPoint! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            secondPoint = (self.pointBasicArrayList.objectArray[index] as! GPoint)
            if (secondPoint.getX() != 1000) {
                newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() &+ x, secondPoint.getY() &+ y))
            } else {
                newBasicArrayList.add(secondPoint)
            }
            }
        }
        self.pointBasicArrayList = newBasicArrayList
    }
    

    open func rotateToAngle(_ angle: Angle!) {
        self.rotate(Int32(truncatingIfNeeded: angle.getValue()))
    }
    

    fileprivate func rotate(_ angle: Int32) {
        let newBasicArrayList: BasicArrayList! = BasicArrayListD()
        var secondPoint: GPoint! = nil
        var y: Int64 = 0
        var secondX: Int64 = 0
        var secondY: Int64 = 0
        var point: GPoint! = nil
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let size: Int32 = self.pointBasicArrayList.size()
        var sin: Int64 = 0
        var cos: Int64 = 0
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            secondPoint = (self.pointBasicArrayList.objectArray[index] as! GPoint)
            if (secondPoint.getX() != 1000) {
                sin = self.noDecimalTrigTable.sin(angle)
                cos = self.noDecimalTrigTable.cos(angle)
                y = Int64(truncatingIfNeeded: secondPoint.getY()) &* sin
                secondX = (Int64(truncatingIfNeeded: secondPoint.getX()) &* cos) &- y
                secondY = (Int64(truncatingIfNeeded: secondPoint.getX()) &* sin) &+ (Int64(truncatingIfNeeded: secondPoint.getY()) &* cos)
                point = pointFactory.createXY(Int32(truncatingIfNeeded: secondX) / 10000, Int32(truncatingIfNeeded: secondY) / 10000)
                newBasicArrayList.add(point)
            } else {
                newBasicArrayList.add(secondPoint)
            }
            }
        }
        self.pointBasicArrayList = newBasicArrayList
    }
    

    open func mirror(_ width: Int32) {
        let pointFactory: PointFactory! = PointFactory.getInstance()
        let halfWidth: Int32 = (width >> 1)
        let newBasicArrayList: BasicArrayList! = BasicArrayListD()
        var secondPoint: GPoint! = nil
        var newX: Int32 = 0
        var point: GPoint! = nil
        let size: Int32 = self.pointBasicArrayList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            secondPoint = (self.pointBasicArrayList.objectArray[index] as! GPoint)
            if (secondPoint.getX() != 1000) {
                newX = 0
                if (secondPoint.getX() > halfWidth) {
                    newX = halfWidth &- (secondPoint.getX() &- halfWidth)
                } else {
                    newX = halfWidth &+ (halfWidth &- secondPoint.getX())
                }
                point = pointFactory.createXY(newX, secondPoint.getY())
                newBasicArrayList.add(point)
            } else {
                newBasicArrayList.add(secondPoint)
            }
            }
        }
        self.pointBasicArrayList = newBasicArrayList
    }
    

    @discardableResult open func getMatrix() -> BasicArrayList! {
        return self.pointBasicArrayList
    }
}

