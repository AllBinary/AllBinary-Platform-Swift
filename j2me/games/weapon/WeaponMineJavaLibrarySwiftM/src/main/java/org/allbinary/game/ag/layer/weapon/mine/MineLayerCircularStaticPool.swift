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
// package org.allbinary.game.ag.layer.weapon.mine

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.weapon.WeaponLayerCircularPool
// import org.allbinary.view.ViewPositionFactoryInterface

open class MineLayerCircularStaticPool: JObject {
    fileprivate static var WEAPON_LAYER_CIRCULAR_STATIC_POOL: WeaponLayerCircularPool! = WeaponLayerCircularPool()

    public override init() {
        super.init()
    }
    

    open class func `init`(_ viewPositionFactoryInterface: ViewPositionFactoryInterface!) {
        MineCountedPickedUpLayerInterfaceFactory.`init`()
        MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(MineLayerFactory(viewPositionFactoryInterface), 20)
    }
    

    @discardableResult open class func getInstance() -> WeaponLayerCircularPool! {
        return MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL
    }
}

