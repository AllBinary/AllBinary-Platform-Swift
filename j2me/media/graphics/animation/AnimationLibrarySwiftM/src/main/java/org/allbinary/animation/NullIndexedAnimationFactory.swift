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

open class NullIndexedAnimationFactory: JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    public static let NULL_INDEXED_ANIMATION_ARRAY: JArray<IndexedAnimation?>! = JArray<IndexedAnimation?>(0, nil)
    fileprivate static var NULL_INDEXED_ANIMATION_FACTORY: NullIndexedAnimationFactory! = NullIndexedAnimationFactory()
    fileprivate var NULL_ANIMATION: Animation! = nil

    private func initFields() {
    self.NULL_ANIMATION = NullIndexedAnimationInner()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getFactoryInstance() -> NullIndexedAnimationFactory! {
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return self.NULL_ANIMATION
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        return self.NULL_ANIMATION
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

