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
// package org.allbinary.game.collision

import J2SEForSwiftLibrary
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.layer.AllBinaryLayer

open class LayerCollisionUtil: JObject {
    fileprivate static let instance: LayerCollisionUtil! = LayerCollisionUtil()
    fileprivate var collisionProcessor: CollisionProcessor! = nil

    private func initFields() {
    self.collisionProcessor = nil
    }
    

    @discardableResult open class func getInstance() -> LayerCollisionUtil! {
        return LayerCollisionUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let features: Features! = Features.getInstance()
        let gameFeatureFactory: GameFeatureFactory! = GameFeatureFactory.getInstance()
        if (OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)) {
            self.collisionProcessor = CollisionThreedProcessor()
        } else {
            self.collisionProcessor = Collision2DProcessor()
        }
    }
    

    @discardableResult open func isCollision(_ myLayer: AllBinaryLayer!, _ myLayer2: AllBinaryLayer!) -> Bool {
        return self.collisionProcessor.isCollision(myLayer, myLayer2)
    }
}

