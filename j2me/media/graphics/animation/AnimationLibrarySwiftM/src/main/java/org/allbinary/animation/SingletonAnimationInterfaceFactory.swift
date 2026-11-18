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

open class SingletonAnimationInterfaceFactory: JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var animationInterface: Animation! = nil

    private func initFields() {
    
    }
    

    public init(_ animationInterface: Animation!) {
        super.init()
        self.initFields()
        self.animationInterface = animationInterface
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return self.animationInterface
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return self.animationInterface
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

