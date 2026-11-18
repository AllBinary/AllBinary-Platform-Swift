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
// import org.allbinary.media.ScaleProperties

open class AnimationInterfaceFactoryInterfaceComposite: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var animationInterfaceFactoryInterfaceArray: JArray<AnimationInterfaceFactoryInterface?>! = nil

    private func initFields() {
    
    }
    

    public init(_ basicAnimationInterfaceFactoryInterfaceArray: JArray<AnimationInterfaceFactoryInterface?>!) {
        super.init()
        self.initFields()
        self.animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    @discardableResult open func getAnimationInterfaceFactoryInterfaceArray() -> JArray<AnimationInterfaceFactoryInterface?>! {
        return self.animationInterfaceFactoryInterfaceArray
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

