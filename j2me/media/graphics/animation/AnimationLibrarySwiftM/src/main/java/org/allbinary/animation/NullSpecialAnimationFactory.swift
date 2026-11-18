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
// import org.allbinary.animation.special.SpecialAnimation
// import org.allbinary.media.ScaleProperties

open class NullSpecialAnimationFactory: JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate static var NULL_SPECIAL_ANIMATION_FACTORY: NullSpecialAnimationFactory! = NullSpecialAnimationFactory()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getFactoryInstance() -> NullSpecialAnimationFactory! {
        return NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return SpecialAnimation.getInstance()
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return SpecialAnimation.getInstance()
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

