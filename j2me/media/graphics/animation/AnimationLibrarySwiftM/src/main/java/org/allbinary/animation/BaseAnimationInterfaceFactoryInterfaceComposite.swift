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

open class BaseAnimationInterfaceFactoryInterfaceComposite: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var basicAnimationInterfaceFactoryInterfaceArray: JArray<BasicAnimationInterfaceFactoryInterface?>! = nil

    private func initFields() {
    
    }
    

    public init(_ basicAnimationInterfaceFactoryInterfaceArray: JArray<BasicAnimationInterfaceFactoryInterface?>!) {
        super.init()
        self.initFields()
        self.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    @discardableResult open func getBasicAnimationInterfaceFactoryInterfaceArray() -> JArray<BasicAnimationInterfaceFactoryInterface?>! {
        return self.basicAnimationInterfaceFactoryInterfaceArray
    }
    

    open func setBasicAnimationInterfaceFactoryInterfaceArray(_ basicAnimationInterfaceFactoryInterfaceArray: JArray<BasicAnimationInterfaceFactoryInterface?>!) {
        self.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

