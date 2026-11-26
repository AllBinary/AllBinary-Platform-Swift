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
// package org.allbinary.game.ag.ai.scroller

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.layer.identification.GroupLayerManagerListener
// import org.allbinary.game.layer.weapon.WeaponLayer
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

open class FlockingAI: BasicAI {
    fileprivate var allowedDistance: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        let allowedDistance: Int32! = jUnboxValue(hashtable.get(jBoxValue(BasePatrolAI.MAX_DISTANCE)), Int32.self)
        self.allowedDistance = allowedDistance.intValue()
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        var maxDistance: Int32 = 0
        var farAllbinaryLayer: AllBinaryLayer! = AllBinaryLayer.NULL_ALLBINARY_LAYER
        let groupLayerManagerListener: GroupLayerManagerListener! = GroupLayerManagerListener.getInstance()
        let list: BasicArrayList! = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY)
        let size: Int32 = list.size()
        var allBinaryLayer: AllBinaryLayer! = nil
        var ownerLayerInterface: AllBinaryLayer! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            allBinaryLayer = (list.get(index) as! AllBinaryLayer)
            if (allBinaryLayer.getType() != WeaponLayer.getStaticType()) {
                let distance: Int32 = self.getXYDistance(allBinaryLayer)
                if (distance > maxDistance) {
                    maxDistance = distance
                    farAllbinaryLayer = allBinaryLayer
                    if (distance > self.allowedDistance) {
                        break
                    }
                }
            }
            }
        }
        if (maxDistance > self.allowedDistance) {
            if (farAllbinaryLayer !== AllBinaryLayer.NULL_ALLBINARY_LAYER) {
                ownerLayerInterface = self.getOwnerLayerInterface()
                if (farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()) {
                    self.processKeyAI(Canvas.LEFT)
                } else if (farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()) {
                    self.processKeyAI(Canvas.RIGHT)
                } else if (farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()) {
                    self.processKeyAI(Canvas.UP)
                } else if (farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()) {
                    self.processKeyAI(Canvas.DOWN)
                }
            }
        }
    }
    

    @discardableResult fileprivate func getXYDistance(_ allBinaryLayer: AllBinaryLayer!) -> Int32 {
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        let xTotalDistance: Int32 = (allBinaryLayer.getXP() &+ allBinaryLayer.getHalfWidth()) &- (ownerLayerInterface.getXP() &+ ownerLayerInterface.getHalfWidth())
        let yTotalDistance: Int32 = (allBinaryLayer.getYP() &+ allBinaryLayer.getHalfHeight()) &- (ownerLayerInterface.getYP() &+ ownerLayerInterface.getHalfHeight())
        let mathUtil: MathUtil! = MathUtil.getInstance()
        let totalDistance: Int32 = mathUtil.abs(xTotalDistance) &+ mathUtil.abs(yTotalDistance)
        return totalDistance
    }
}

