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
// package org.allbinary.vector

import J2SEForSwiftLibrary

open class PointsUtil: JObject {
    fileprivate static let instance: PointsUtil! = PointsUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PointsUtil! {
        return PointsUtil.instance
    }
    

    @discardableResult open func adjustXY(_ points: JArray<JArray<JArray<Int32>?>?>!, _ x: Int32, _ y: Int32) -> JArray<JArray<JArray<Int32>?>?>! {
        let size: Int32 = points.length
        let newPoints: JArray<JArray<JArray<Int32>?>?>! = JArray<JArray<JArray<Int32>?>?>(size, factory: { JArray<JArray<Int32>?>(0, factory: { JArray<Int32>(0, 0) }) })
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            let size2: Int32 = points[index]!.length
            newPoints[index] = JArray<JArray<Int32>?>(size2, factory: { JArray<Int32>(2, 0) })
            do {
                var index2: Int32 = 0
                while (index2 < size2) {
                    defer { index2 &+= 1 }
                if (points[index]![index2]![0] != 1000) {
                    newPoints[index]![index2]![0] = points[index]![index2]![0] + x
                    newPoints[index]![index2]![1] = points[index]![index2]![1] + y
                } else {
                    newPoints[index]![index2]![0] = 1000
                    newPoints[index]![index2]![1] = 1000
                }
                }
            }
            }
        }
        return newPoints
    }
    

    @discardableResult open func adjust(_ points: JArray<JArray<Int32>?>!, _ both: Int32) -> JArray<JArray<Int32>?>! {
        return self.adjust(points, both, both)
    }
    

    @discardableResult open func adjust(_ points: JArray<JArray<Int32>?>!, _ x: Int32, _ y: Int32) -> JArray<JArray<Int32>?>! {
        let newPoints: JArray<JArray<Int32>?>! = JArray<JArray<Int32>?>(points.length, factory: { JArray<Int32>(2, 0) })
        do {
            var index2: Int32 = 0
            while (index2 < points.length) {
                defer { index2 &+= 1 }
            if (points[index2]![0] != 1000) {
                newPoints[index2]![0] = points[index2]![0] + x
                newPoints[index2]![1] = points[index2]![1] + y
            } else {
                newPoints[index2]![0] = 1000
                newPoints[index2]![1] = 1000
            }
            }
        }
        return newPoints
    }
}

