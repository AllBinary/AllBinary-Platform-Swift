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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.media.ScaleProperties

open class NullAnimationFactory: JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    public static var NULL_NOT_FOR_USE_ANIMATION_FACTORY: NullAnimationFactory! = NullAnimationFactory()
    fileprivate static var NULL_ANIMATION_FACTORY: NullAnimationFactory! = NullAnimationFactory()
    fileprivate var NULL_ANIMATION: Animation! = nil
    public var EMPTY_ARRAY: JArray<Animation?>! = nil

    private func initFields() {
    self.NULL_ANIMATION = Animation() /* Java anonymous class body: implement it as a named subclass
        

        open func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        } */
    self.EMPTY_ARRAY = JArray<Animation?>(0, nil)
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getFactoryInstance() -> NullAnimationFactory! {
        return NullAnimationFactory.NULL_ANIMATION_FACTORY
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

