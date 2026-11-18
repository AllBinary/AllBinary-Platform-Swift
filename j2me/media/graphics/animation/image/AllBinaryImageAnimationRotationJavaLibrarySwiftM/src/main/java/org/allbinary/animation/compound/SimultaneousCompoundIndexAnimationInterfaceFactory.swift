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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties

open class SimultaneousCompoundIndexAnimationInterfaceFactory: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var basicAnimationInterfaceFactoryInterfaceArray: JArray<AnimationInterfaceFactoryInterface?>! = nil
    fileprivate var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    
    
    }
    

    public init(_ basicAnimationInterfaceFactoryInterfaceArray: JArray<AnimationInterfaceFactoryInterface?>!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        self.animationBehaviorFactory = animationBehaviorFactory
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        let size: Int32 = self.basicAnimationInterfaceFactoryInterfaceArray.length
        let animationInterfaceArray: JArray<IndexedAnimation?>! = JArray<IndexedAnimation?>(size, nil)
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            animationInterfaceArray[index] = (self.basicAnimationInterfaceFactoryInterfaceArray[index]!.getInstance(instanceId) as! IndexedAnimation)
            }
        }
        return self.getOrCreate(animationInterfaceArray)
    }
    

    @discardableResult open func getOrCreate(_ animationInterfaceArray: JArray<IndexedAnimation?>!) -> Animation! {
        return SimultaneousCompoundIndexAnimation(animationInterfaceArray, self.animationBehaviorFactory.getOrCreateInstance())
    }
    

    @discardableResult open func getBasicAnimationInterfaceFactoryInterfaceArray() -> JArray<AnimationInterfaceFactoryInterface?>! {
        return self.basicAnimationInterfaceFactoryInterfaceArray
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

