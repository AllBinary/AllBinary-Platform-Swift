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
// import org.allbinary.game.health.HealthInterfaceCompositeInterface
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.game.part.CountedLayerInterfaceFactoryPart
// import org.allbinary.game.part.PartInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

open class PickupBehavior: JObject, PickupBehaviorInterface {
    public static var NULL_PICKUP_BEHAVIOR: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    fileprivate var countedIndex: Int32 = 0
    fileprivate var ownerLayerInterface: CollidableCompositeLayer! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    
    
    }
    

    @discardableResult open class func getNullInstance() -> PickupBehavior! {
        if (PickupBehavior.NULL_PICKUP_BEHAVIOR === NullUtil.getInstance().NULL_OBJECT) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR = PickupBehavior(CollidableCompositeLayer.getNullInstance(), 0)
        }
        return (PickupBehavior.NULL_PICKUP_BEHAVIOR as! PickupBehavior)
    }
    

    public init(_ ownerLayerInterface: CollidableCompositeLayer!, _ countedIndex: Int32) {
        super.init()
        self.initFields()
        self.ownerLayerInterface = ownerLayerInterface
        self.countedIndex = countedIndex
    }
    

    open func doPickup(_ pickupProcessorInterface: PickupProcessorInterface!) {
        do {
            let healthInterfaceCompositeInterface: HealthInterfaceCompositeInterface! = (self.ownerLayerInterface as Any as? HealthInterfaceCompositeInterface)
            if (healthInterfaceCompositeInterface.getHealthInterface().isAlive()) {
                pickupProcessorInterface.process(self.ownerLayerInterface)
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func doPickupLayer(_ pickupLayerInterface: PickedUpLayerInterface!) {
        do {
            let pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface! = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface()
            let pickedUpLayerType: PickedUpLayerType! = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType()
            let pickedUpLayerTypeFactory: PickedUpLayerTypeFactory! = PickedUpLayerTypeFactory.getInstance()
            if (pickedUpLayerType === pickedUpLayerTypeFactory.BEAM || pickedUpLayerType === pickedUpLayerTypeFactory.MINE || pickedUpLayerType === pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType === pickedUpLayerTypeFactory.ENHANCEMENT) {
                self.add((pickedUpLayerInterfaceFactoryInterface as Any as? CountedPickedUpLayerInterfaceFactoryInterface))
            } else if (pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() === pickedUpLayerTypeFactory.PART) {
                let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (self.ownerLayerInterface as! CollidableDestroyableDamageableLayer)
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface)
            } else if (pickedUpLayerType === pickedUpLayerTypeFactory.NONE) {
            } else {
                let pickupProcessorInterface: PickupProcessorInterface! = (pickedUpLayerInterfaceFactoryInterface as Any as? PickupProcessorInterface)
                self.doPickup(pickupProcessorInterface)
            }
            pickupLayerInterface.setPickedUp()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func add(_ countedPickedUpLayerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactoryInterface!) {
        let partIndex: Int32 = countedPickedUpLayerInterfaceFactoryInterface.getId() &+ self.countedIndex
        self.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
    }
    

    open func addAt(_ countedPickedUpLayerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactoryInterface!, _ partIndex: Int32) {
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (self.ownerLayerInterface as! CollidableDestroyableDamageableLayer)
        let countedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart! = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex] as! CountedLayerInterfaceFactoryPart)
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() &+ countedPickedUpLayerInterfaceFactoryInterface.getTotal())
    }
    

    @discardableResult open func getFirstAvailableCountedLayerInterfaceFactory(_ pickedUpLayerTypeArray: JArray<PickedUpLayerType?>!) -> CountedLayerInterfaceFactoryPart! {
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (self.ownerLayerInterface as! CollidableDestroyableDamageableLayer)
        let partInterfaceArray: JArray<PartInterface?>! = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        let size: Int32 = partInterfaceArray.length
        var nextCountedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart! = nil
        var countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory! = nil
        do {
            var index: Int32 = self.countedIndex
            while (index < size) {
                defer { index &+= 1 }
            nextCountedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[index] as! CountedLayerInterfaceFactoryPart)
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
            do {
                var index2: Int32 = pickedUpLayerTypeArray.length
                while (jPreDecrement(&index2) >= 0) {
                if (countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() === pickedUpLayerTypeArray[index2]) {
                    if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                        return nextCountedLayerInterfaceFactory
                    }
                }
                }
            }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY
    }
    

    @discardableResult open func getCountedLayerInterfaceFactoryForSlot(_ slotIndex: Int32) -> CountedLayerInterfaceFactoryPart! {
        var currentSlot: Int32 = 0
        let collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer! = (self.ownerLayerInterface as! CollidableDestroyableDamageableLayer)
        let partInterfaceArray: JArray<PartInterface?>! = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        let size: Int32 = partInterfaceArray.length
        var nextCountedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart! = nil
        do {
            var index: Int32 = self.countedIndex
            while (index < size) {
                defer { index &+= 1 }
            nextCountedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[index] as! CountedLayerInterfaceFactoryPart)
            if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory
                } else {
                    currentSlot &+= 1
                }
            }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY
    }
    

    @discardableResult open func getCountedIndex() -> Int32 {
        return self.countedIndex
    }
}

