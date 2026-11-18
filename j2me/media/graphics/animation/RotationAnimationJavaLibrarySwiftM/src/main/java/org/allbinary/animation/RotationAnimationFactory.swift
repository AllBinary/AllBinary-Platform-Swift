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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.ScaleProperties

open class RotationAnimationFactory: JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var totalAngle: Int16 = 0
    fileprivate var angleIncrement: Int16 = 0

    private func initFields() {
    
    
    }
    

    @discardableResult open class func createFactory() -> RotationAnimationFactory! {
        let totalAngle: Int16 = AngleFactory.getInstance().TOTAL_ANGLE
        return RotationAnimationFactory(totalAngle, Int16(truncatingIfNeeded: (Int32(Int32(truncatingIfNeeded: totalAngle)) / GameConfigurationCentral.getInstance().getGameControlFidelity())))
    }
    

    public init(_ totalAngle: Int16, _ angleIncrement: Int16) {
        super.init()
        self.initFields()
        self.totalAngle = totalAngle
        self.angleIncrement = angleIncrement
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(self.angleIncrement), self.totalAngle, AnimationBehavior.getInstance())
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance(self.angleIncrement), self.totalAngle, AnimationBehavior.getInstance())
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

