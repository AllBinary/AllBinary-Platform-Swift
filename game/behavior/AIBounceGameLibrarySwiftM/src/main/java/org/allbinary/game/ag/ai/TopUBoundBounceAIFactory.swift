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
// import org.allbinary.ai.ArtificialIntelligenceInterface
// import org.allbinary.bounds.TopULayerBounds
// import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface
// import org.allbinary.game.input.GameInput
// import org.allbinary.game.physics.velocity.VelocityInterface
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.util.ABHashtable

open class TopUBoundBounceAIFactory: JObject, ArtificialIntelligenceInterfaceFactoryInterface {

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance(_ hashtable: ABHashtable!, _ ownerLayerInterface: AllBinaryLayer!, _ gameInput: GameInput!) -> ArtificialIntelligenceInterface! {
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface! = (ownerLayerInterface as Any as? VelocityInterfaceCompositeInterface)
        let velocityInterface: VelocityInterface! = (velocityInterfaceCompositeInterface.getVelocityProperties() as Any as? VelocityInterface)
        let maxDistancePerTick: Int32 = (velocityInterface.getMaxForwardVelocity() >> velocityInterface.getVelocityXBasicDecimalP().getScaledFactor())
        let halfWidth: Int32 = ownerLayerInterface.getWidth() &* 2 &+ maxDistancePerTick &+ 1
        let halfHeight: Int32 = ownerLayerInterface.getHeight() &* 2 &+ maxDistancePerTick &+ 1
        let point: GPoint! = PointFactory.getInstance().createXY(halfWidth, halfHeight &+ 60)
        let displayInfo: DisplayInfoSingleton! = DisplayInfoSingleton.getInstance()
        let rectangle: Rectangle! = Rectangle(point, (displayInfo.getLastWidth() &- halfWidth &- point.getX()), (displayInfo.getLastHeight() &- halfHeight &- point.getY()))
        return BoundBounceAI(ownerLayerInterface, gameInput, TopULayerBounds(rectangle), ReverseVelocityBoundsVisitor(ownerLayerInterface))
    }
}

