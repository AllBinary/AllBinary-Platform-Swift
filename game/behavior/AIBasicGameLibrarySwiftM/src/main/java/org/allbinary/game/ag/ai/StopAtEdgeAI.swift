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
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class StopAtEdgeAI: BasicAI {
    

    public override init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = ((ownerLayerInterface as Any as? VelocityInterfaceCompositeInterface))
        let velocityProperties: BasicVelocityProperties! = velocityInterfaceCompositeInterface.getVelocityProperties()
        let x: Int32 = ownerLayerInterface.getXP()
        let y: Int32 = ownerLayerInterface.getYP()
        let x2: Int32 = ownerLayerInterface.getX2()
        let y2: Int32 = ownerLayerInterface.getY2()
        let width: Int32 = ownerLayerInterface.getWidth()
        let height: Int32 = ownerLayerInterface.getHeight()
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        if (x2 &+ velocityProperties.getVelocityXBasicDecimalP().getScaled() > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() &- width, y, ownerLayerInterface.getZP())
            velocityProperties.getVelocityYBasicDecimalP().setint(0)
        }
        if (y2 &+ velocityProperties.getVelocityYBasicDecimalP().getScaled() > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() &- height, ownerLayerInterface.getZP())
            velocityProperties.getVelocityXBasicDecimalP().setint(0)
        }
        if (x &+ velocityProperties.getVelocityXBasicDecimalP().getScaled() < 0) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP())
            velocityProperties.getVelocityYBasicDecimalP().setint(0)
        }
        if (y &+ velocityProperties.getVelocityYBasicDecimalP().getScaled() < 0) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP())
            velocityProperties.getVelocityXBasicDecimalP().setint(0)
        }
    }
}

