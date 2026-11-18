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
// import org.allbinary.ai.ArtificialIntelligence
// import org.allbinary.ai.ArtificialIntelligenceTransitionInterface
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.RotationAnimationInterface
// import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterface
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.math.AngleIncrementInfo
// import org.allbinary.util.CircularIndexUtil

open class HorizontaRotationManeuverAI: BasicAI, ArtificialIntelligenceTransitionInterface {
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var currentSpeedDivisor: Int32 = 0
    fileprivate var rotationAnimationInterface: IndexedAnimation! = nil
    fileprivate var baseVelocityInterface: BasicVelocityProperties! = nil
    fileprivate var velocityInterface: VelocityInterface! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.circularIndexUtil = CircularIndexUtil.createInstanceAt(10, Integer.MAX_VALUE)
    self.currentSpeedDivisor = 5
    
    
    
    }
    

    public override init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as! RotationAnimationInterfaceCompositeInterface)
        self.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as! VelocityInterfaceCompositeInterface)
        self.baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        self.velocityInterface = (self.baseVelocityInterface as! VelocityInterface)
        let rotationAnimationInterface: RotationAnimationInterface! = (self.rotationAnimationInterface as! RotationAnimationInterface)
        let angleIncrementInfo: AngleIncrementInfo! = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
    }
    

    open func transition() {
        let rotationAnimationInterface: RotationAnimationInterface! = (self.rotationAnimationInterface as! RotationAnimationInterface)
        let angleIncrementInfo: AngleIncrementInfo! = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as! RotationAnimationInterfaceCompositeInterface)
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
        let allbinaryLayer: AllBinaryLayer! = self.getOwnerLayerInterface()
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP())
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let rotationAnimationInterface: RotationAnimationInterface! = ((self.rotationAnimationInterface as! RotationAnimationInterface))
        let angleIncrementInfo: AngleIncrementInfo! = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        let frame: Int32 = self.rotationAnimationInterface.getFrame()
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        if (ownerLayerInterface.getXP() &- ownerLayerInterface.getWidth() <= 0 && frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            self.reverse()
            self.drop()
        }
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        if (ownerLayerInterface.getX2() &+ ownerLayerInterface.getWidth() > displayInfo.getLastWidth() && frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            self.reverse()
            self.accelerate()
            self.drop()
        }
        let index: Int32 = self.circularIndexUtil.getIndex()
        if (index % self.currentSpeedDivisor == 0 && index % 2 == 0) {
            super.processKeyAI(Canvas.UP)
            self.velocityInterface.limitMaxXYVelocity(self.velocityInterface.getMaxForwardVelocity() / self.currentSpeedDivisor)
        }
        self.circularIndexUtil.next()
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            super.processKeyAI(Canvas.KEY_NUM0)
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            super.processKeyAI(Canvas.KEY_POUND)
        }
    }
    

    open func reverse() {
        let rotationAnimationInterface: RotationAnimationInterface! = (self.rotationAnimationInterface as! RotationAnimationInterface)
        let angleIncrementInfo: AngleIncrementInfo! = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        let frame: Int32 = self.rotationAnimationInterface.getFrame()
        if (frame == angleIncrementInfo.LEFT_FRAME.intValue()) {
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as! RotationAnimationInterfaceCompositeInterface)
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
            self.baseVelocityInterface.zero()
        } else if (frame == angleIncrementInfo.RIGHT_FRAME.intValue()) {
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as! RotationAnimationInterfaceCompositeInterface)
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue())
            self.baseVelocityInterface.zero()
        }
    }
    

    fileprivate func accelerate() {
        if (self.currentSpeedDivisor > 1) {
            self.currentSpeedDivisor &-= 1
        }
    }
    

    fileprivate func drop() {
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        var y: Int32 = ownerLayerInterface.getYP()
        if (ownerLayerInterface.getY2() &+ ownerLayerInterface.getHeight() > displayInfo.getLastHeight()) {
            y = 0
        } else {
            y = y &+ ownerLayerInterface.getHeight() &+ 1
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    }
    

    @discardableResult open override func getId() -> Int32 {
        return ArtificialIntelligence.AI_ID
    }
}

