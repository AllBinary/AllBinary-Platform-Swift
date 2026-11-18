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
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

open class VectorAnimation: IndexedAnimation, VectorAnimationInterface {
    fileprivate var currentPoints: JArray<JArray<JArray<Int32>?>?>! = nil
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    self.circularIndexUtil = CircularIndexUtil.createInstance(0)
    }
    

    @discardableResult open class func createVectorAnimation(_ currentPoints2: JArray<JArray<Int32>?>!, _ basicColor: BasicColor!, _ animationBehavior: AnimationBehavior!) -> VectorAnimation! {
        let currentPoints: JArray<JArray<JArray<Int32>?>?>! = JArray<JArray<JArray<Int32>?>?>(1, factory: { JArray<JArray<Int32>?>(currentPoints2.length, factory: { JArray<Int32>(2, 0) }) })
        let size: Int32 = currentPoints2.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            currentPoints[0]![index]![0] = currentPoints2[index]![0]
            currentPoints[0]![index]![1] = currentPoints2[index]![1]
            }
        }
        return VectorAnimation(currentPoints, basicColor, animationBehavior)
    }
    

    public init(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!, _ basicColor: BasicColor!, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.setPoints(currentPoints)
        self.setBasicColorP(basicColor)
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        var changed: Bool = false
        if (self.getBasicColorP() == nil || self.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true
        }
        super.setBasicColorP(basicColor)
        if (changed) {
            self.updateModifiers()
        }
    }
    

    open override func changeBasicColor(_ basicColor: BasicColor!) {
        var changed: Bool = false
        if (self.getChangeBasicColor() == nil || self.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true
        }
        super.changeBasicColor(basicColor)
        if (changed) {
            self.updateModifiers()
        }
    }
    

    open override func setAlpha(_ alpha: Int32) {
        var changed: Bool = false
        if (self.alphaP != alpha) {
            changed = true
        }
        super.setAlpha(alpha)
        if (changed) {
            self.updateModifiers()
        }
    }
    

    open override func setScale(_ scaleX: Float, _ scaleY: Float) {
    }
    

    open override func setMaxScale(_ maxScaleX: Float, _ maxScaleY: Float) {
    }
    

    fileprivate func updateModifiers() {
    }
    

    @discardableResult open override func getAnimationSize() -> Int32 {
        return self.getSize()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.currentPoints.length
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open override func nextFrame() {
        self.circularIndexUtil.next()
    }
    

    open override func previousFrame() {
        self.circularIndexUtil.previous()
    }
    

    open func paintVectors(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        do {
            var nextPointX: Int32 = 0
            var nextPointY: Int32 = 0
            var nextPoint: JArray<Int32>! = nil
            var point: JArray<Int32>! = nil
            let currentPointsFrame: JArray<JArray<Int32>?>! = self.currentPoints[self.circularIndexUtil.getIndex()]
            let size: Int32 = currentPointsFrame.length
            var index: Int32 = size &- 2
            while (jPreDecrement(&index) >= 0) {
                nextPoint = currentPointsFrame[index]
                point = currentPointsFrame[index &+ 1]
                nextPointX = nextPoint[0]
                nextPointY = nextPoint[1]
                if (nextPointX != 1000) {
                    graphics.drawLine(point[0] &+ x, point[1] &+ y, nextPointX &+ x, nextPointY &+ y)
                } else {
                    index &-= 1
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.basicSetColorUtil.setBasicColorP(graphics, self.basicColor)
        self.paintVectors(graphics, x, y)
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.circularIndexUtil.getIndex()
    }
    

    open override func setFrame(_ index: Int32) {
        self.circularIndexUtil.setIndex(index)
    }
    

    @discardableResult open func getPoints(_ frame: Int32) -> JArray<JArray<Int32>?>! {
        return self.currentPoints[frame]
    }
    

    open func setPoints(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!) {
        self.currentPoints = currentPoints
        self.circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.length)
    }
    

    @discardableResult open override func getBasicColorP() -> BasicColor! {
        return super.getBasicColorP()
    }
}

