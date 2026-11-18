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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import org.allbinary.graphics.GPoint
// import org.allbinary.util.BasicArrayList

open class VectorAnimationUtil: JObject {
    fileprivate static let instance: VectorAnimationUtil! = VectorAnimationUtil()
    

    @discardableResult open class func getInstance() -> VectorAnimationUtil! {
        return VectorAnimationUtil.instance
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func toAnimationArrayFromListOfPointListWithPointsPerFrame(_ vector: BasicArrayList!, _ pointsPerFrame: Int32) -> JArray<JArray<JArray<Int32>?>?>! {
        let size: Int32 = vector.size()
        let points: JArray<JArray<JArray<Int32>?>?>! = JArray<JArray<JArray<Int32>?>?>(size, factory: { JArray<JArray<Int32>?>(pointsPerFrame, factory: { JArray<Int32>(2, 0) }) })
        var nextBasicArrayList: BasicArrayList! = nil
        var framePoints: JArray<JArray<Int32>?>! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            nextBasicArrayList = (vector.objectArray[index] as! BasicArrayList)
            framePoints = self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            do {
                var pointIndex: Int32 = 0
                while (pointIndex < framePoints.length) {
                    defer { pointIndex &+= 1 }
                points[index]![pointIndex]![0] = framePoints[pointIndex]![0]
                points[index]![pointIndex]![1] = framePoints[pointIndex]![1]
                }
            }
            }
        }
        return points
    }
    

    @discardableResult open func toAnimationArrayFromListOfPointList(_ vector: BasicArrayList!) -> JArray<JArray<JArray<Int32>?>?>! {
        let size: Int32 = vector.size()
        let points: JArray<JArray<JArray<Int32>?>?>! = JArray<JArray<JArray<Int32>?>?>(size, factory: { JArray<JArray<Int32>?>(0, factory: { JArray<Int32>(0, 0) }) })
        var nextBasicArrayList: BasicArrayList! = nil
        var framePoints: JArray<JArray<Int32>?>! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            nextBasicArrayList = (vector.objectArray[index] as! BasicArrayList)
            framePoints = self.toFrameArrayFromPointBasicArrayList(nextBasicArrayList)
            points[index] = JArray<JArray<Int32>?>(framePoints.length, factory: { JArray<Int32>(2, 0) })
            do {
                var pointIndex: Int32 = 0
                while (pointIndex < framePoints.length) {
                    defer { pointIndex &+= 1 }
                points[index]![pointIndex]![0] = framePoints[pointIndex]![0]
                points[index]![pointIndex]![1] = framePoints[pointIndex]![1]
                }
            }
            }
        }
        return points
    }
    

    @discardableResult open func toFrameArrayFromPointBasicArrayList(_ list: BasicArrayList!) -> JArray<JArray<Int32>?>! {
        let points: JArray<JArray<Int32>?>! = JArray<JArray<Int32>?>(list.size(), factory: { JArray<Int32>(2, 0) })
        let size: Int32 = list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let nextPoint: GPoint! = (list.objectArray[index] as! GPoint)
            points[index]![0] = nextPoint.getX()
            points[index]![1] = nextPoint.getY()
            }
        }
        return points
    }
}

