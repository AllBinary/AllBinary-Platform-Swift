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
// import org.allbinary.bounds.BoundsVisitorInterface
// import org.allbinary.game.physics.velocity.VelocityInterface
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.LayerInterface
// import org.allbinary.logic.communication.log.LogUtil

open class ReverseVelocityBoundsVisitor: JObject, BoundsVisitorInterface {
    public var logUtil: LogUtil! = nil
    public var velocityInterface: VelocityInterface! = nil
    fileprivate var layerInterface: LayerInterface! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    }
    

    public init(_ layerInterface: LayerInterface!) {
        super.init()
        self.initFields()
        self.layerInterface = layerInterface
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = (layerInterface as Any as? VelocityInterfaceCompositeInterface)
        self.velocityInterface = (velocityInterfaceCompositeInterface.getVelocityProperties() as Any as? VelocityInterface)
    }
    

    @discardableResult open func getX() -> Int32 {
        return self.layerInterface.getXP()
    }
    

    @discardableResult open func getY() -> Int32 {
        return self.layerInterface.getYP()
    }
    

    open func minX() {
        if (self.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0) {
            self.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        }
    }
    

    open func maxX() {
        if (self.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0) {
            self.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        }
    }
    

    open func minY() {
        if (self.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0) {
            self.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        }
    }
    

    open func maxY() {
        if (self.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0) {
            self.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        }
    }
}

