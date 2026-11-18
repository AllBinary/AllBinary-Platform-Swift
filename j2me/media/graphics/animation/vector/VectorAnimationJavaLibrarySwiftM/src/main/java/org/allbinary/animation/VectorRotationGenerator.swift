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
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListS
// import org.allbinary.vector.VectorInfo

open class VectorRotationGenerator: JObject {
    fileprivate static let instance: VectorRotationGenerator! = VectorRotationGenerator()
    public var logUtil: LogUtil! = nil
    fileprivate var vectorAnimationUtil: VectorAnimationUtil! = nil
    fileprivate var angleFactory: AngleFactory! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.vectorAnimationUtil = VectorAnimationUtil.getInstance()
    self.angleFactory = AngleFactory.getInstance()
    }
    

    @discardableResult open class func getInstance() -> VectorRotationGenerator! {
        return VectorRotationGenerator.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getInstance(_ vectorRotationInfo: VectorInfo!) -> JArray<JArray<JArray<Int32>?>?>! {
        return self.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames())
    }
    

    @discardableResult open func getInstanceFrames(_ width: Int32, _ height: Int32, _ points: JArray<JArray<Int32>?>!, _ frames: Int32) -> JArray<JArray<JArray<Int32>?>?>! {
        do {
            let totalAngle: Int16 = self.angleFactory.TOTAL_ANGLE
            let angleIncrement: Int32 = Int32(Int32(truncatingIfNeeded: totalAngle)) / frames
            let pointsBasicArrayList: BasicArrayList! = BasicArrayListS(Int32(Int32(truncatingIfNeeded: totalAngle)) / angleIncrement)
            let pointBasicArrayList: BasicArrayList! = BasicArrayListS(points.length)
            let pointFactory: PointFactory! = PointFactory.getInstance()
            let size: Int32 = points.length
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                pointBasicArrayList.add(pointFactory.createXY(points[index]![0], points[index]![1]))
                }
            }
            var index: Int32 = 0
            while (index < Int32(Int32(truncatingIfNeeded: totalAngle))) {
                pointsBasicArrayList.add(self.getListAtAngle(width, height, pointBasicArrayList, self.angleFactory.getAt(index)))
                index = index &+ angleIncrement
            }
            let newPoints: JArray<JArray<JArray<Int32>?>?>! = self.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size())
            return newPoints
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getListAtAngle(_ width: Int32, _ height: Int32, _ pointBasicArrayList: BasicArrayList!, _ angle: Angle!) -> BasicArrayList! {
        let graphicsPipe: BasicGraphicsPipeline! = BasicGraphicsPipeline(pointBasicArrayList)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(-(width >> 1), -(height >> 1))
        graphicsPipe.rotateToAngle(angle)
        graphicsPipe.translate((width >> 1), (height >> 1))
        return graphicsPipe.getMatrix()
    }
}

