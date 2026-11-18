/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.layer.AllBinaryLayer

open class PickedUpLayerInterfaceFactoryBase: JObject, PickedUpLayerInterfaceFactoryInterface {
    public static let NULL_PICKED_UP_LAYER_FACTORY_BASE: PickedUpLayerInterfaceFactoryBase! = PickedUpLayerInterfaceFactoryBase()

    public override init() {
        super.init()
    }
    

    @discardableResult open func getIconLayer() -> AllBinaryLayer! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getAnimationInterface() -> Animation! {
        jThrow(JException("RuntimeException", ""))
    }
    

    @discardableResult open func getPickedUpLayerType() -> PickedUpLayerType! {
        jThrow(JException("RuntimeException", ""))
    }
}

