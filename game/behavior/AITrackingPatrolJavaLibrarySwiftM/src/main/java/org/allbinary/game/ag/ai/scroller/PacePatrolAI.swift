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
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionCompositeInterface
// import org.allbinary.direction.DirectionFactory
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.tracking.TrackingEvent
// import org.allbinary.game.tracking.TrackingEventHandler
// import org.allbinary.game.tracking.TrackingEventListenerInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.layer.LayerInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class PacePatrolAI: BasePatrolAI, TrackingEventListenerInterface {
    fileprivate var trackingList: BasicArrayList! = nil
    fileprivate var firingDistance: Int32 = 0
    public var isFollowLimitedByTerrain: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    self.firingDistance = 0
    self.isFollowLimitedByTerrain = false
    }
    

    public override init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(hashtable, ownerLayerInterface, gameInput)
        self.initFields()
        TrackingEventHandler.getInstance().addListenerInterface(self)
        self.trackingList = BasicArrayListD()
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        self.update()
        let direction: Direction! = self.setFiringDirectionForTargetIfInRange()
        let directionFactory: DirectionFactory! = DirectionFactory.getInstance()
        if (direction === directionFactory.LEFT) {
            if (self.lastKeyDirection != self.keyDirection || !self.isFollowLimitedByTerrain) {
                super.processKeyAI(Canvas.LEFT)
            }
            self.keyDirection = Canvas.LEFT
            self.lastKeyDirection = self.keyDirection
            self.xTotalDistance = 0
            super.processKeyAI(Canvas.KEY_NUM1)
        } else if (direction === directionFactory.RIGHT) {
            if (self.lastKeyDirection != self.keyDirection || !self.isFollowLimitedByTerrain) {
                super.processKeyAI(Canvas.RIGHT)
            }
            self.keyDirection = Canvas.RIGHT
            self.lastKeyDirection = self.keyDirection
            self.xTotalDistance = 0
            super.processKeyAI(Canvas.KEY_NUM1)
        } else {
            super.processKeyAI(self.keyDirection)
        }
    }
    

    @discardableResult fileprivate func setFiringDirectionForTargetIfInRange() -> Direction! {
        let directionFactory: DirectionFactory! = DirectionFactory.getInstance()
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        var direction: Direction! = directionFactory.NOT_BORDERED_WITH
        var lastTrackingEvent: TrackingEvent! = nil
        var lastTrackingLayerInterface: LayerInterface! = nil
        var directionCompositeInterface: DirectionCompositeInterface! = nil
        let size: Int32 = self.trackingList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            lastTrackingEvent = (self.trackingList.get(0) as! TrackingEvent)
            lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
            let x: Int32 = lastTrackingLayerInterface.getXP()
            let y: Int32 = lastTrackingLayerInterface.getYP()
            let yDistance: Int32 = ownerLayerInterface.getYP() &- y &- ownerLayerInterface.getHeight()
            let xDistance: Int32 = ownerLayerInterface.getXP() &- x &- ownerLayerInterface.getWidth()
            let absXDistance: Int32 = abs(xDistance)
            let absYDistance: Int32 = abs(yDistance)
            if (absYDistance <= 100) {
                if (absXDistance < self.getFiringDistance() / 2) {
                    directionCompositeInterface = (self.getOwnerLayerInterface() as Any as? DirectionCompositeInterface)
                    if (xDistance < 0 && directionCompositeInterface.getDirection() === directionFactory.RIGHT) {
                        direction = directionFactory.RIGHT
                    } else if (xDistance > 0 && directionCompositeInterface.getDirection() === directionFactory.LEFT) {
                        direction = directionFactory.LEFT
                    }
                }
            }
            }
        }
        return direction
    }
    

    open override func disable() {
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onMovement(_ trackingEvent: TrackingEvent!) {
        self.trackingList.clear()
        self.trackingList.add(trackingEvent)
    }
    

    @discardableResult open func getFiringDistance() -> Int32 {
        return self.firingDistance
    }
    

    open func setFiringDistance(_ firingDistance: Int32) {
        self.firingDistance = firingDistance
    }
}

