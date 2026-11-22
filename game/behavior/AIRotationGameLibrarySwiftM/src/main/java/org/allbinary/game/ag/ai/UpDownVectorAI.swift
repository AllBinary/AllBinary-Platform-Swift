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
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.math.BasicDecimal

open class UpDownVectorAI: BasicAI {
    fileprivate var velocityInterface: BasicVelocityProperties! = nil
    fileprivate var index: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    self.index = 0
    }
    

    public override init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as Any as? VelocityInterfaceCompositeInterface)
        self.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        self.velocityInterface.getVelocityYBasicDecimalP().setint(0)
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let y: Int32 = self.getOwnerLayerInterface().getHeight() &* 270
        if (self.index < 5) {
            let basicDecimal: BasicDecimal! = self.velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.addint(y)
            self.index &+= 1
        } else if (self.index < 10) {
            let basicDecimal: BasicDecimal! = self.velocityInterface.getVelocityYBasicDecimalP()
            basicDecimal.setint(0)
            basicDecimal.subtractint(y)
            self.index &+= 1
        } else {
            self.index = 0
            self.processAI(allBinaryLayerManager)
        }
    }
}

