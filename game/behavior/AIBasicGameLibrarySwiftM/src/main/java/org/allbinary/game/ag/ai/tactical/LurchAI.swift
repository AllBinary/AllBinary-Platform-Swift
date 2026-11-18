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
// package org.allbinary.game.ag.ai.tactical

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import org.allbinary.game.ai.BasicAI
// import org.allbinary.game.input.GameInput
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

open class LurchAI: BasicAI {
    public var currentRelativeAngle: Int32 = 0
    fileprivate var currentSpeed: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.currentRelativeAngle = 0
    self.currentSpeed = 0
    }
    

    public override init(_ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) {
        super.init(ownerLayerInterface, gameInput)
        self.initFields()
    }
    

    open override func processAI(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.currentSpeed == -1) {
            self.currentSpeed = 5
        } else {
            self.currentSpeed = -1
        }
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        var x: Int32 = ownerLayerInterface.getXP()
        if (ownerLayerInterface.getXP() &- self.currentSpeed <= 0) {
            self.reverse()
            self.drop()
        }
        if (ownerLayerInterface.getX2() &+ self.currentSpeed > DisplayInfoSingleton.getInstance().getLastWidth()) {
            self.reverse()
            self.accelerate()
            self.drop()
        }
        if (self.currentRelativeAngle == 0) {
            x = x &+ self.currentSpeed
        } else if (self.currentRelativeAngle == 180) {
            x = x &- self.currentSpeed
        }
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP())
        if (self.currentRelativeAngle == 0) {
            super.processKeyAI(Canvas.KEY_NUM0)
        } else if (self.currentRelativeAngle == 180) {
            super.processKeyAI(Canvas.KEY_POUND)
        }
    }
    

    open func reverse() {
        if (self.currentRelativeAngle == 180) {
            self.currentRelativeAngle = 0
        } else if (self.currentRelativeAngle == 0) {
            self.currentRelativeAngle = 180
        }
    }
    

    fileprivate func accelerate() {
        if (self.currentSpeed < 20) {
            self.currentSpeed &+= 1
        }
    }
    

    fileprivate func drop() {
        let ownerLayerInterface: AllBinaryLayer! = self.getOwnerLayerInterface()
        var y: Int32 = ownerLayerInterface.getYP()
        if (ownerLayerInterface.getY2() &+ ownerLayerInterface.getHeight() > DisplayInfoSingleton.getInstance().getLastHeight()) {
            y = 0
        } else {
            y = y &+ ownerLayerInterface.getHeight() &+ 1
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    }
}

