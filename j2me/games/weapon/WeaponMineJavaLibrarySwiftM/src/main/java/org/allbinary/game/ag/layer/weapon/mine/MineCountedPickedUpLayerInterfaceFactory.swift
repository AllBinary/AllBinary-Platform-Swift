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
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.IconLayerFactory
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory
// import org.allbinary.game.layer.weapon.WeaponLayerCircularPool
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.ABHashtable

open class MineCountedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory {
    fileprivate static var pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface! = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    fileprivate var weaponLayerCircularStaticPool: WeaponLayerCircularPool! = nil
    fileprivate var weaponProperties: WeaponProperties! = nil
    fileprivate var smallIntegerSingletonFactory: SmallIntegerSingletonFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance()
    self.weaponProperties = WeaponProperties(-1, -1, 0, 8000, Int16(truncatingIfNeeded: 10))
    self.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    }
    

    open class func `init`() {
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory()
    }
    

    public init() {
        super.init(PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance(0))
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> PickedUpLayerInterfaceFactoryInterface! {
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface
    }
    

    @discardableResult open override func getTotal() -> Int32 {
        return 3
    }
    

    @discardableResult open override func getNextInstance(_ hashtable: ABHashtable!, _ x: Int32, _ y: Int32, _ z: Int32) -> AllBinaryLayer! {
        let sourceLayerInterface: AllBinaryLayer! = (hashtable.get(jAsObject(self.smallIntegerSingletonFactory.getAt(0))) as! AllBinaryLayer)
        let angle: Int32! = jUnboxValue(hashtable.get(jAsObject(self.smallIntegerSingletonFactory.getAt(1))), Int32.self)
        let scoreableInterface: ScoreableInterface! = (sourceLayerInterface as Any as? ScoreableInterface)
        return self.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, Int32(truncatingIfNeeded: angle.intValue()), 0, self.weaponProperties, scoreableInterface)
    }
}

