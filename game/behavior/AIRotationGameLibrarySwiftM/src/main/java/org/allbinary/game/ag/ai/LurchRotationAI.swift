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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.RotationAnimationInterface
// import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface
// import org.allbinary.game.ag.ai.tactical.LurchAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.math.AngleIncrementInfo

open class LurchRotationAI: LurchAI {
    fileprivate var rotationAnimationInterface: IndexedAnimation! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public override init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
        let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as Any as? RotationAnimationInterfaceCompositeInterface)
        self.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        self.update()
    }
    

    open override func reverse() {
        super.reverse()
        self.update()
    }
    

    fileprivate func update() {
        if (self.currentRelativeAngle == 0) {
            let rotationAnimationInterface: RotationAnimationInterface! = (self.rotationAnimationInterface as Any as? RotationAnimationInterface)
            let angleIncrementInfo: AngleIncrementInfo! = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as Any as? RotationAnimationInterfaceCompositeInterface)
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
        } else if (self.currentRelativeAngle == 180) {
            let rotationAnimationInterface: RotationAnimationInterface! = (self.rotationAnimationInterface as Any as? RotationAnimationInterface)
            let angleIncrementInfo: AngleIncrementInfo! = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface! = (self.getOwnerLayerInterface() as Any as? RotationAnimationInterfaceCompositeInterface)
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue())
        }
    }
}

