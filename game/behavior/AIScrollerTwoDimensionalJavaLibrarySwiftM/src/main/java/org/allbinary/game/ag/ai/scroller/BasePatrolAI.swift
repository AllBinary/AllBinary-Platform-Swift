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
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.ABHashtable

open class BasePatrolAI: BasicAI {
    public static let MAX_DISTANCE: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(2)
    public static let DIRECTION_ARRAY: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(3)
    public static let FIRING_DISTANCE: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(4)
    public static var SPEED: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(5)
    public var maxDistance: Int32! = nil
    public var currentDistance: Int32 = 0
    public var xTotalDistance: Int32 = 0
    public var lastKeyDirection: Int32 = 0
    public var keyDirection: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    self.xTotalDistance = 0
    self.lastKeyDirection = Canvas.RIGHT
    self.keyDirection = Canvas.RIGHT
    }
    

    public init(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        self.maxDistance = jUnboxValue(hashtable.get(BasePatrolAI.MAX_DISTANCE), Int32.self)
        self.currentDistance = self.maxDistance.intValue()
    }
    

    open func update() {
        self.updateTotalDistance()
        self.changeDirectionIfReachedPacingAreaMax()
    }
    

    fileprivate func updateTotalDistance() {
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as Any as? VelocityInterfaceCompositeInterface)
        let velocityProperties: BasicVelocityProperties! = velocityInterfaceCompositeInterface.getVelocityProperties()
        self.xTotalDistance = self.xTotalDistance &+ velocityProperties.getVelocityXBasicDecimalP().getScaled()
    }
    

    fileprivate func changeDirectionIfReachedPacingAreaMax() {
        let mathUtil: MathUtil! = MathUtil.getInstance()
        let totalDistance: Int32 = mathUtil.abs(self.xTotalDistance)
        if (totalDistance > self.currentDistance) {
            self.nextDirection()
        }
    }
    

    open func nextDirection() {
        if (self.lastKeyDirection == Canvas.LEFT) {
            self.keyDirection = Canvas.RIGHT
            self.lastKeyDirection = self.keyDirection
            self.xTotalDistance = 0
        } else if (self.lastKeyDirection == Canvas.RIGHT) {
            self.keyDirection = Canvas.LEFT
            self.lastKeyDirection = self.keyDirection
            self.xTotalDistance = 0
        }
    }
    

    open func disable() {
    }
}

