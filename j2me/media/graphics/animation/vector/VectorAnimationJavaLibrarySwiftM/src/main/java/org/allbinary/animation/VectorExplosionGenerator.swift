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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.pipeline.RandomRotationFactory
// import org.allbinary.graphics.pipeline.RandomTranslation
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListS

open class VectorExplosionGenerator: JObject {
    fileprivate static let instance: VectorExplosionGenerator! = VectorExplosionGenerator()
    public var RANDOM: VectorExplosionType! = nil
    public var ROTATION: VectorExplosionType! = nil
    fileprivate var vectorAnimationUtil: VectorAnimationUtil! = nil
    fileprivate var randomRotationFactory: RandomRotationFactory! = nil

    private func initFields() {
    self.RANDOM = VectorExplosionType()
    self.ROTATION = VectorExplosionType()
    self.vectorAnimationUtil = VectorAnimationUtil.getInstance()
    self.randomRotationFactory = RandomRotationFactory.getInstance()
    }
    

    @discardableResult open class func getInstance() -> VectorExplosionGenerator! {
        return VectorExplosionGenerator.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func createList(_ list: BasicArrayList!, _ howMuch: Int32, _ type: VectorExplosionType!) -> BasicArrayList! {
        var point: GPoint! = nil
        let size: Int32 = list.size()
        let points: JArray<JArray<Int32>?>! = JArray<JArray<Int32>?>(size, factory: { JArray<Int32>(2, 0) })
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            point = (list.objectArray[index] as! GPoint)
            points[index]![0] = point.getX()
            points[index]![1] = point.getY()
            }
        }
        return self.createListFromPoints(list, points, howMuch, type)
    }
    

    @discardableResult open func getInstance(_ points: JArray<JArray<Int32>?>!, _ howMuch: Int32, _ type: VectorExplosionType!) -> JArray<JArray<JArray<Int32>?>?>! {
        let pointsBasicArrayList: BasicArrayList! = self.getInstanceStartFrame(points, howMuch, type, true)
        let tempBasicArrayList: BasicArrayList! = (pointsBasicArrayList.objectArray[0] as! BasicArrayList)
        let newPoints: JArray<JArray<JArray<Int32>?>?>! = self.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size())
        return newPoints
    }
    

    @discardableResult open func getInstanceStartFrame(_ points: JArray<JArray<Int32>?>!, _ howMuch: Int32, _ type: VectorExplosionType!, _ startFrame: Bool) -> BasicArrayList! {
        do {
            let pointsBasicArrayList: BasicArrayList! = BasicArrayListS(howMuch)
            pointsBasicArrayList.add(self.createPointsBasicArrayList(points))
            var frameIndex: Int32 = 0
            var tempBasicArrayList: BasicArrayList! = nil
            var pointBasicArrayList: BasicArrayList! = nil
            while (frameIndex < howMuch) {
                tempBasicArrayList = (pointsBasicArrayList.objectArray[frameIndex] as! BasicArrayList)
                pointBasicArrayList = self.createListFromPoints(tempBasicArrayList, points, howMuch, type)
                pointsBasicArrayList.add(pointBasicArrayList)
                frameIndex &+= 1
            }
            if (!startFrame) {
                pointsBasicArrayList.removeAt(0)
            }
            return pointsBasicArrayList
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult fileprivate func createListFromPoints(_ tempBasicArrayList: BasicArrayList!, _ points: JArray<JArray<Int32>?>!, _ howMuch: Int32, _ type: VectorExplosionType!) -> BasicArrayList! {
        var index: Int32 = 0
        let pointBasicArrayList: BasicArrayList! = BasicArrayListD()
        var sectionBasicArrayList: BasicArrayList! = nil
        while (index < points.length) {
            sectionBasicArrayList = BasicArrayListD()
            while (points[index]![0] != 1000) {
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index &+= 1
                if (index >= points.length) {
                    break
                }
            }
            sectionBasicArrayList = RandomTranslation.getInstance(sectionBasicArrayList, howMuch)
            if (type === self.ROTATION) {
                sectionBasicArrayList = self.randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch)
            }
            let size: Int32 = sectionBasicArrayList.size()
            do {
                var index2: Int32 = 0
                while (index2 < size) {
                    defer { index2 &+= 1 }
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2])
                }
            }
            if (index >= points.length) {
                break
            } else if (points[index]![0] == 1000) {
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index])
                index &+= 1
            }
        }
        return pointBasicArrayList
    }
    

    @discardableResult fileprivate func createPointsBasicArrayList(_ points: JArray<JArray<Int32>?>!) -> BasicArrayList! {
        if (points.length == 0) {
            jThrow(JException("Exception", "Not Points Provided"))
        }
        let firstPointBasicArrayList: BasicArrayList! = BasicArrayListS(points.length)
        let pointFactory: PointFactory! = PointFactory.getInstance()
        do {
            var index: Int32 = 0
            while (index < points.length) {
                defer { index &+= 1 }
            firstPointBasicArrayList.add(pointFactory.createXY(points[index]![0], points[index]![1]))
            }
        }
        return firstPointBasicArrayList
    }
}

