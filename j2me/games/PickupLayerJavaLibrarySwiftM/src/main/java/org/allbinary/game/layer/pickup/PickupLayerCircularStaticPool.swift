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
// package org.allbinary.game.layer.pickup

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayerCircularPool

open class PickupLayerCircularStaticPool: AllBinaryLayerCircularPool {
    fileprivate static var SINGLETON: PickupLayerCircularStaticPool! = PickupLayerCircularStaticPool()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> PickupLayerCircularStaticPool! {
        return PickupLayerCircularStaticPool.SINGLETON
    }
    

    @discardableResult open func getInstanceXYZ(_ pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface!, _ x: Int32, _ y: Int32, _ z: Int32) -> PickedUpLayerInterface! {
        let pickupLayer: PickupLayer! = (self.getNextInstance() as! PickupLayer)
        pickupLayer.initXYZ(x, y, z)
        pickupLayer.`init`(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface())
        return pickupLayer
    }
}

