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
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties

open class CompoundAnimationInterfaceFactory: JObject, AnimationInterfaceFactoryInterface {
    public var basicAnimationInterfaceFactoryInterfaceArrayP: JArray<AnimationInterfaceFactoryInterface?>! = nil
    public var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    
    
    }
    

    public init(_ basicAnimationInterfaceFactoryInterfaceArray: JArray<AnimationInterfaceFactoryInterface?>!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray
        self.animationBehaviorFactory = animationBehaviorFactory
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        let size: Int32 = self.basicAnimationInterfaceFactoryInterfaceArrayP.length
        let animationInterfaceArray: JArray<Animation?>! = self.createArray(size)
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            animationInterfaceArray[index] = self.basicAnimationInterfaceFactoryInterfaceArrayP[index]!.getInstance(instanceId)
            }
        }
        return self.createAnimation(animationInterfaceArray)
    }
    

    @discardableResult open func createArray(_ size: Int32) -> JArray<Animation?>! {
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY
    }
    

    @discardableResult open func createAnimation(_ animationInterfaceArray: JArray<Animation?>!) -> Animation! {
        return NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    @discardableResult open func getBasicAnimationInterfaceFactoryInterfaceArray() -> JArray<AnimationInterfaceFactoryInterface?>! {
        return self.basicAnimationInterfaceFactoryInterfaceArrayP
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
        let size: Int32 = self.basicAnimationInterfaceFactoryInterfaceArrayP.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.basicAnimationInterfaceFactoryInterfaceArrayP[index]!.setInitialScale(scaleProperties)
            }
        }
    }
}

