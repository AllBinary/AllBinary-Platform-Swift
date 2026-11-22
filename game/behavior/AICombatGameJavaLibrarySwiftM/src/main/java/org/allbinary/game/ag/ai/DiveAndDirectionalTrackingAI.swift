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
// package org.allbinary.game.ag.ai

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionFactory
// import org.allbinary.direction.DirectionalCompositeInterface
// import org.allbinary.direction.DirectionalInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.combat.destroy.event.DestroyedEvent
// import org.allbinary.game.combat.destroy.event.DestroyedEventHandler
// import org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface
// import org.allbinary.game.identification.Group
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.game.tracking.TrackingEvent
// import org.allbinary.game.tracking.TrackingEventHandler
// import org.allbinary.game.tracking.TrackingEventListenerInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.logic.util.visitor.Visitor
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class DiveAndDirectionalTrackingAI: BasicAI, TrackingEventListenerInterface, DestroyedEventListenerInterface {
    fileprivate var mathUtil: MathUtil! = nil
    fileprivate var directionFactory: DirectionFactory! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var directionalInterface: DirectionalInterface! = nil
    fileprivate var velocityInterface: BasicVelocityProperties! = nil
    fileprivate var directionToKeyMap: JArray<Int32>! = nil
    fileprivate var initialDropped: Bool = false
    fileprivate var diveP: Bool = false
    fileprivate var directionOfTarget: Direction! = nil
    fileprivate var MIN_DISTANCE: Int32 = 0
    fileprivate var lastTrackingLayerInterface: AllBinaryLayer! = nil
    fileprivate var artificialIntelligenceInterface: ArtificialIntelligenceInterface! = nil
    fileprivate var aiVistor: Visitor! = nil
    fileprivate var lastDirection: Direction! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.mathUtil = MathUtil.getInstance()
    self.directionFactory = DirectionFactory.getInstance()
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    self.timeDelayHelper = TimeDelayHelper(500)
    self.list = BasicArrayListD()
    
    
    self.directionToKeyMap = JArray<Int32>([Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT])
    self.initialDropped = false
    self.diveP = false
    self.directionOfTarget = Direction.getInstance(0)
    self.MIN_DISTANCE = 40
    self.lastTrackingLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    
    
    self.lastDirection = DirectionFactory.getInstance().NO_DIRECTION
    }
    

    public init(_ ownerLayerInterface: AllBinaryLayer!, _ artificialIntelligenceInterface: ArtificialIntelligenceInterface!, _ gameInput: GameInput!, _ visitor: Visitor!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.aiVistor = visitor
        self.artificialIntelligenceInterface = artificialIntelligenceInterface
        let directionalCompositeInterface: DirectionalCompositeInterface! = (self.getOwnerLayerInterface() as Any as? DirectionalCompositeInterface)
        self.directionalInterface = directionalCompositeInterface.getDirectionalInterface()
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as Any as? VelocityInterfaceCompositeInterface)
        self.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        DestroyedEventHandler.getInstance().addListenerInterface(self)
        self.`init`()
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.isBeyondTarget()) {
            self.`init`()
            self.velocityInterface.zero()
        }
        if (!self.diveP) {
            self.target(allBinaryLayerManager)
        } else {
            self.dive()
            self.attack()
        }
        self.list.clear()
    }
    

    fileprivate func `init`() {
        self.diveP = false
        self.directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH
        TrackingEventHandler.getInstance().addListenerInterface(self)
    }
    

    fileprivate func target(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.list.size() == 0) {
            return
        }
        let lastTrackingEvent: TrackingEvent! = (self.list.removeAt(0) as! TrackingEvent)
        self.lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
        let layerInterface: AllBinaryLayer! = self.lastTrackingLayerInterface
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        let groupArray: JArray<Group?>! = layerInterface.getGroupInterface()
        let ownerGroupArray: JArray<Group?>! = ownerLayerInterface.getGroupInterface()
        if (groupArray === ownerGroupArray) {
            return
        }
        let x: Int32 = self.lastTrackingLayerInterface.getXP()
        let y: Int32 = self.lastTrackingLayerInterface.getYP()
        let yDistance: Int32 = ownerLayerInterface.getYP() &- y &- ownerLayerInterface.getHeight()
        let xDistance: Int32 = ownerLayerInterface.getXP() &- x &- ownerLayerInterface.getWidth()
        let directionFactory: DirectionFactory! = DirectionFactory.getInstance()
        if (self.mathUtil.abs(yDistance) > self.mathUtil.abs(xDistance)) {
            if (yDistance > self.MIN_DISTANCE) {
                self.directionOfTarget = directionFactory.UP
            } else if (yDistance < -self.MIN_DISTANCE) {
                self.directionOfTarget = directionFactory.DOWN
            }
        } else {
            if (xDistance > self.MIN_DISTANCE) {
                self.directionOfTarget = directionFactory.LEFT
            } else if (xDistance < -self.MIN_DISTANCE) {
                self.directionOfTarget = directionFactory.RIGHT
            }
        }
        if (!self.initialDropped && self.directionOfTarget !== directionFactory.NOT_BORDERED_WITH) {
            self.drop()
        }
        if (self.initialDropped) {
            if (self.directionOfTarget === directionFactory.UP || self.directionOfTarget === directionFactory.DOWN) {
                self.verticalTargeting(x)
            } else if (self.directionOfTarget === directionFactory.LEFT || self.directionOfTarget === directionFactory.RIGHT) {
                self.horizontalTargeting(y)
            } else {
                self.artificialIntelligenceInterface.processAI(allBinaryLayerManager)
            }
        }
    }
    

    fileprivate func verticalTargeting(_ x: Int32) {
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        if (ownerLayerInterface.getXP() < x) {
            self.moveRight()
        }
        if (ownerLayerInterface.getXP() > x) {
            self.moveLeft()
        }
        if (ownerLayerInterface.getXP() > x &- 3 && ownerLayerInterface.getXP() < x &+ 3) {
            self.setDive()
        }
    }
    

    fileprivate func horizontalTargeting(_ y: Int32) {
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        if (ownerLayerInterface.getYP() < y) {
            self.moveDown()
        }
        if (ownerLayerInterface.getYP() > y) {
            self.moveUp()
        }
        if (ownerLayerInterface.getYP() > y &- 3 && ownerLayerInterface.getYP() < y &+ 3) {
            self.setDive()
        }
    }
    

    fileprivate func setDive() {
        self.diveP = true
        self.velocityInterface.zero()
        TrackingEventHandler.getInstance().removeListener(self)
    }
    

    fileprivate func moveRight() {
        self.setLastDirection(self.directionFactory.RIGHT)
        self.directionalInterface.setFrameByDirection(self.lastDirection)
        self.aiVistor.visit(self)
    }
    

    fileprivate func moveLeft() {
        self.setLastDirection(self.directionFactory.LEFT)
        self.directionalInterface.setFrameByDirection(self.lastDirection)
        self.aiVistor.visit(self)
    }
    

    fileprivate func moveDown() {
        self.setLastDirection(self.directionFactory.DOWN)
        self.directionalInterface.setFrameByDirection(self.lastDirection)
        self.aiVistor.visit(self)
    }
    

    fileprivate func moveUp() {
        self.setLastDirection(self.directionFactory.UP)
        self.directionalInterface.setFrameByDirection(self.lastDirection)
        self.aiVistor.visit(self)
    }
    

    fileprivate func dive() {
        self.directionalInterface.setFrameByDirection(self.directionOfTarget)
        self.aiVistor.visit(self)
    }
    

    fileprivate func attack() {
        super.processKeyAI(Canvas.KEY_NUM1)
    }
    

    fileprivate func drop() {
        if (self.timeDelayHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
            self.initialDropped = true
            self.aiVistor.visit(self)
        }
    }
    

    @discardableResult fileprivate func isBeyondTarget() -> Bool {
        if (self.directionOfTarget === self.directionFactory.DOWN) {
            if (self.getOwnerLayerInterface().getYP() > self.lastTrackingLayerInterface.getYP() &+ self.MIN_DISTANCE) {
                return true
            } else {
                return false
            }
        } else if (self.directionOfTarget === self.directionFactory.UP) {
            if (self.getOwnerLayerInterface().getYP() < self.lastTrackingLayerInterface.getYP() &+ self.MIN_DISTANCE) {
                return true
            } else {
                return false
            }
        } else if (self.directionOfTarget === self.directionFactory.RIGHT) {
            if (self.getOwnerLayerInterface().getXP() > self.lastTrackingLayerInterface.getXP() &+ self.MIN_DISTANCE) {
                return true
            } else {
                return false
            }
        } else if (self.directionOfTarget === self.directionFactory.LEFT) {
            if (self.getOwnerLayerInterface().getXP() < self.lastTrackingLayerInterface.getXP() &+ self.MIN_DISTANCE) {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onMovement(_ trackingEvent: TrackingEvent!) {
        self.list.add(trackingEvent)
    }
    

    open func onDestroyed(_ destroyedEvent: DestroyedEvent!) {
        if (self.getOwnerLayerInterface() === destroyedEvent.getLayerInterface()) {
            TrackingEventHandler.getInstance().removeListener(self)
            DestroyedEventHandler.getInstance().removeListener(self)
        }
    }
    

    open func setLastDirection(_ lastDirection: Direction!) {
        self.lastDirection = lastDirection
        let value: Int32 = self.getLastDirection().getValue()
        if (value < 4) {
            super.setLastKey(self.directionToKeyMap[value])
        }
    }
    

    open override func setLastKey(_ lastKey: Int32) {
        super.setLastKey(lastKey)
        if (self.getLastKey() == Canvas.LEFT) {
            self.lastDirection = DirectionFactory.getInstance().LEFT
        } else if (self.getLastKey() == Canvas.DOWN) {
            self.lastDirection = DirectionFactory.getInstance().DOWN
        } else if (self.getLastKey() == Canvas.UP) {
            self.lastDirection = DirectionFactory.getInstance().UP
        } else if (self.getLastKey() == Canvas.RIGHT) {
            self.lastDirection = DirectionFactory.getInstance().RIGHT
        }
    }
    

    @discardableResult open func getLastDirection() -> Direction! {
        return self.lastDirection
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append(super.toString())
        stringBuffer.append(" LastDirection: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getLastDirection()))
        return stringBuffer.toString()
    }
}

