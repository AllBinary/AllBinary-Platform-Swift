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
// import org.allbinary.logic.NullUtil
// import org.allbinary.vector.VectorInfo

open class IndependentVectorExplosionRotationAnimationFactory: JObject, ProceduralAnimationInterfaceFactoryInterface {
    fileprivate var framePoints: JArray<JArray<JArray<Int32>?>?>! = nil
    fileprivate var vectorInfo: VectorInfo! = nil
    fileprivate var basicColor: BasicColor! = nil
    fileprivate var vectorAnimationFactoryInterface: VectorAnimationFactoryInterface! = nil
    fileprivate var vectorExplosionGenerator: VectorExplosionGenerator! = nil

    private func initFields() {
    self.framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY
    
    
    
    self.vectorExplosionGenerator = VectorExplosionGenerator.getInstance()
    }
    

    public init(_ vectorInfo: VectorInfo!, _ basicColor: BasicColor!, _ vectorAnimationFactoryInterface: VectorAnimationFactoryInterface!) {
        super.init()
        self.initFields()
        self.vectorInfo = vectorInfo
        self.basicColor = basicColor
        self.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        self.`init`()
    }
    

    open func `init`() {
        self.framePoints = VectorRotationGenerator.getInstance().getInstance(self.vectorInfo)
    }
    

    @discardableResult open func getInstanceAnimation(_ animationInterface: Animation!) -> Animation! {
        var frame: Int32 = 0
        if (animationInterface != nil) {
            let rotationAnimationInterface: IndexedAnimation! = (animationInterface as! IndexedAnimation)
            frame = rotationAnimationInterface.getFrame()
        }
        let points: JArray<JArray<JArray<Int32>?>?>! = self.vectorExplosionGenerator.getInstance(self.framePoints[frame], 6, self.vectorExplosionGenerator.ROTATION)
        return self.vectorAnimationFactoryInterface.getInstance(points, self.basicColor)
    }
}

