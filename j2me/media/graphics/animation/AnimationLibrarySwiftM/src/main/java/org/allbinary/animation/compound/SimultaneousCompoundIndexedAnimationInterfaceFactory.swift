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
// package org.allbinary.animation.compound

import J2SEForSwiftLibrary
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil

open class SimultaneousCompoundIndexedAnimationInterfaceFactory: CompoundAnimationInterfaceFactory {
    

    public override init(_ basicAnimationInterfaceFactoryInterfaceArray: JArray<AnimationInterfaceFactoryInterface?>!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    }
    

    @discardableResult open override func createArray(_ size: Int32) -> JArray<Animation?>! {
        return JArray<Animation?>(size, nil)
    }
    

    @discardableResult open override func createAnimation(_ animationArray: JArray<Animation?>!) -> Animation! {
        return SimultaneousCompoundIndexedAnimation(animationArray, self.animationBehaviorFactory.getOrCreateInstance())
    }
}

