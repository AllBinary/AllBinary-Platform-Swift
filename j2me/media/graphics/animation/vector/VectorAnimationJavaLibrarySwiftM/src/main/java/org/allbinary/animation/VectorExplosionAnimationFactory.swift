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

open class VectorExplosionAnimationFactory: JObject, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var vectorExplosionGenerator: VectorExplosionGenerator! = nil
    fileprivate var basicColor: BasicColor! = nil
    public var animationBehaviorFactory: AnimationBehaviorFactory! = nil

    private func initFields() {
    self.vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    self.basicColor = BasicColorFactory.getInstance().WHITE
    
    }
    

    public init(_ basicColor: BasicColor!, _ animationBehaviorFactory: AnimationBehaviorFactory!) {
        super.init()
        self.initFields()
        self.animationBehaviorFactory = animationBehaviorFactory
        self.setBasicColorP(basicColor)
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        let vectorRotationAnimationInterface: VectorAnimationInterface! = (animationInterface as Any as? VectorAnimationInterface)
        let frame: Int32 = vectorRotationAnimationInterface.getFrame()
        let framePoints: JArray<JArray<Int32>?>! = vectorRotationAnimationInterface.getPoints(frame)
        let points: JArray<JArray<JArray<Int32>?>?>! = self.vectorExplosionGenerator.getInstance(framePoints, 6, self.vectorExplosionGenerator.ROTATION)
        return VectorRotationAnimation(points, self.getBasicColorP(), self.animationBehaviorFactory.getOrCreateInstance())
    }
    

    fileprivate func setBasicColorP(_ basicColor: BasicColor!) {
        self.basicColor = basicColor
    }
    

    @discardableResult fileprivate func getBasicColorP() -> BasicColor! {
        return self.basicColor
    }
}

