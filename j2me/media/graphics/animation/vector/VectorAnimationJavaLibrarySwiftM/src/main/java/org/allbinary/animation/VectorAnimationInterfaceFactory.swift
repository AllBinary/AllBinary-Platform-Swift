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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.media.ScaleProperties

open class VectorAnimationInterfaceFactory: JObject, AnimationInterfaceFactoryInterface {
    fileprivate var currentPoints: JArray<JArray<JArray<Int32>?>?>! = nil
    fileprivate var basicColor: BasicColor! = nil
    public var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    
    self.basicColor = BasicColorFactory.getInstance().WHITE
    
    }
    

    public init(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!, _ basicColor: BasicColor!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.currentPoints = currentPoints
        self.setBasicColorP(basicColor)
        self.animationBehaviorFactory = animationBehaviorFactory
    }
    

    @discardableResult open func getInstance(_ instanceId: Int32) -> Animation! {
        return VectorAnimation(self.currentPoints, self.getBasicColorP(), self.animationBehaviorFactory.getOrCreateInstance())
    }
    

    open func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult open func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
    

    open func setInitialScale(_ scaleProperties: ScaleProperties!) {
    }
}

