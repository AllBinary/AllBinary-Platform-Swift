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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.pipeline.BasicGraphicsPipeline
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListS

open class VectorMirrorGenerator: JObject {
    fileprivate static let instance: VectorMirrorGenerator! = VectorMirrorGenerator()
    public var logUtil: LogUtil! = nil
    fileprivate var vectorAnimationUtil: VectorAnimationUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.vectorAnimationUtil = VectorAnimationUtil.getInstance()
    }
    

    @discardableResult open class func getInstance() -> VectorMirrorGenerator! {
        return VectorMirrorGenerator.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstance(_ points: JArray<JArray<JArray<Int32>?>?>!, _ width: Int32) -> JArray<JArray<JArray<Int32>?>?>! {
        do {
            let pointFactory: PointFactory! = PointFactory.getInstance()
            var pointBasicArrayList: BasicArrayList! = nil
            var nextPoints: JArray<JArray<Int32>?>! = nil
            var size2: Int32 = 0
            let size: Int32 = points.length
            let pointsBasicArrayList: BasicArrayList! = BasicArrayListS(size)
            do {
                var frame: Int32 = 0
                while (frame < size) {
                    defer { frame &+= 1 }
                nextPoints = points[frame]
                size2 = nextPoints.length
                pointBasicArrayList = BasicArrayListS(size2)
                do {
                    var index: Int32 = 0
                    while (index < size2) {
                        defer { index &+= 1 }
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index]![0], nextPoints[index]![1]))
                    }
                }
                pointsBasicArrayList.add(pointBasicArrayList)
                }
            }
            do {
                var index: Int32 = 0
                while (index < points.length) {
                    defer { index &+= 1 }
                pointsBasicArrayList.add(self.getInstance((pointsBasicArrayList.objectArray[index] as! BasicArrayList), width))
                }
            }
            let newPoints: JArray<JArray<JArray<Int32>?>?>! = self.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList)
            return newPoints
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getInstance(_ pointBasicArrayList: BasicArrayList!, _ width: Int32) -> BasicArrayList! {
        let graphicsPipe: BasicGraphicsPipeline! = BasicGraphicsPipeline(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.mirror(width)
        return graphicsPipe.getMatrix()
    }
}

