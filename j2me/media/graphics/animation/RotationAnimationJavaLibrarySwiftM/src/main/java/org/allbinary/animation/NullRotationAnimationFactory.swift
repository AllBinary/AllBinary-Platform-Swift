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

open class NullRotationAnimationFactory: JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate static var NULL_ROTATION_ANIMATION_FACTORY: NullRotationAnimationFactory! = NullRotationAnimationFactory()
    public var NULL_ROTATION_ANIMATION_ARRAY: JArray<RotationAnimation?>! = nil
    fileprivate var NULL_ANIMATION: Animation! = nil

    private func initFields() {
    self.NULL_ROTATION_ANIMATION_ARRAY = JArray<RotationAnimation?>(0, nil)
    self.NULL_ANIMATION = NullRotationAnimation2()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getFactoryInstance() -> NullRotationAnimationFactory! {
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY
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

