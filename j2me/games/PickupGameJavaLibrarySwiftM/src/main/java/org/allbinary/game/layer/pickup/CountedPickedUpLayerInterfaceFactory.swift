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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

open class CountedPickedUpLayerInterfaceFactory: PickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactoryInterface {
    public static let NULL_COUNTED_PICKUP_LAYER_FACTORY: CountedPickedUpLayerInterfaceFactory! = CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer.NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance(0))
    fileprivate var id: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public override init(_ pickeUpLayerType: PickedUpLayerType!, _ iconLayer: IconLayer!, _ animationInterface: Animation!) {
        super.init(pickeUpLayerType, iconLayer, animationInterface)
        self.initFields()
        let list: BasicArrayList! = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        self.id = list.size()
        list.add(self)
    }
    

    @discardableResult open func getNextInstance(_ hashtable: ABHashtable!, _ x: Int32, _ y: Int32, _ z: Int32) -> AllBinaryLayer! {
        jThrow(JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    @discardableResult open func getTotal() -> Int32 {
        return -1
    }
    

    @discardableResult open func getId() -> Int32 {
        return self.id
    }
}

