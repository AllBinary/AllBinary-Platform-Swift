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
// import org.allbinary.layer.AllBinaryLayer

open class PickedUpLayerInterfaceFactory: PickedUpLayerInterfaceFactoryBase {
    fileprivate var pickedUpLayerType: PickedUpLayerType! = nil
    fileprivate var iconLayer: IconLayer! = nil
    fileprivate var animationInterface: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    }
    

    public init(_ pickeUpLayerType: PickedUpLayerType!, _ iconLayer: IconLayer!, _ animationInterface: Animation!) {
        super.init()
        self.initFields()
        self.pickedUpLayerType = pickeUpLayerType
        self.animationInterface = animationInterface
        self.iconLayer = iconLayer
    }
    

    @discardableResult open override func getIconLayer() -> AllBinaryLayer! {
        return self.iconLayer
    }
    

    @discardableResult open override func getAnimationInterface() -> Animation! {
        return self.animationInterface
    }
    

    @discardableResult open override func getPickedUpLayerType() -> PickedUpLayerType! {
        return self.pickedUpLayerType
    }
}

