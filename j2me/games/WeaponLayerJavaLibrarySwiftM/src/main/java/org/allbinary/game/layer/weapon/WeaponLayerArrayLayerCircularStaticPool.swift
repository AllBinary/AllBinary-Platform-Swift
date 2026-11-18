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
// package org.allbinary.game.layer.weapon

import J2SEForSwiftLibrary
// import org.allbinary.util.CircularIndexUtil

open class WeaponLayerArrayLayerCircularStaticPool: JObject {
    fileprivate static let instance: WeaponLayerArrayLayerCircularStaticPool! = WeaponLayerArrayLayerCircularStaticPool()
    fileprivate var MAX: Int32 = 0
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var WEAPONLAYER_ARRAY: JArray<JArray<WeaponLayer?>?>! = nil
    fileprivate var TWO_WEAPONLAYER_ARRAY: JArray<JArray<WeaponLayer?>?>! = nil
    fileprivate var THREE_WEAPONLAYER_ARRAY: JArray<JArray<WeaponLayer?>?>! = nil

    private func initFields() {
    self.MAX = 5
    self.circularIndexUtil = CircularIndexUtil.createInstance(self.MAX)
    self.WEAPONLAYER_ARRAY = nil
    self.TWO_WEAPONLAYER_ARRAY = nil
    self.THREE_WEAPONLAYER_ARRAY = nil
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> WeaponLayerArrayLayerCircularStaticPool! {
        return WeaponLayerArrayLayerCircularStaticPool.instance
    }
    

    open func `init`() {
        let WEAPONLAYER_ARRAY: JArray<JArray<WeaponLayer?>?>! = JArray<JArray<WeaponLayer?>?>(self.MAX &* 2, nil)
        let TWO_WEAPONLAYER_ARRAY: JArray<JArray<WeaponLayer?>?>! = JArray<JArray<WeaponLayer?>?>(self.MAX, nil)
        let THREE_WEAPONLAYER_ARRAY: JArray<JArray<WeaponLayer?>?>! = JArray<JArray<WeaponLayer?>?>(self.MAX, nil)
        do {
            var index: Int32 = 0
            while (index < self.MAX) {
                defer { index &+= 1 }
            WEAPONLAYER_ARRAY[index] = JArray<WeaponLayer?>(1, nil)
            TWO_WEAPONLAYER_ARRAY[index] = JArray<WeaponLayer?>(2, nil)
            THREE_WEAPONLAYER_ARRAY[index] = JArray<WeaponLayer?>(3, nil)
            }
        }
        self.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY
        self.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY
        self.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY
    }
    

    @discardableResult fileprivate func getWeaponLayerArrays(_ size: Int32) -> JArray<JArray<WeaponLayer?>?>! {
        if (size == 1) {
            return self.WEAPONLAYER_ARRAY
        } else if (size == 2) {
            return self.TWO_WEAPONLAYER_ARRAY
        } else if (size == 3) {
            return self.THREE_WEAPONLAYER_ARRAY
        }
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getInstanceArray(_ size: Int32) -> JArray<WeaponLayer?>! {
        let weaponLayerArray: JArray<WeaponLayer?>! = self.getWeaponLayerArrays(size)[self.circularIndexUtil.getIndex()]
        self.circularIndexUtil.next()
        return weaponLayerArray
    }
}

