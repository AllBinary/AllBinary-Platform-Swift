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
// package org.allbinary.game.layer.pickup

import J2SEForSwiftLibrary
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory
// import org.allbinary.game.combat.destroy.DestroyedLayerProcessor
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
// import org.allbinary.view.ViewPositionBase

open class PickupLayer: MultiPlayerGameLayer, PickedUpLayerInterface, PickupableInterface {
    fileprivate var pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface! = nil
    fileprivate var destroyed: Bool = false
    fileprivate var animationInterface: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    self.destroyed = false
    self.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    public init(_ name: String!, _ remoteInfo: RemoteInfo!, _ total: Int32, _ pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface!, _ animationInterface: Animation!, _ rectangle: Rectangle!, _ viewPosition: ViewPositionBase!) {
        super.init(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        self.initFields()
        self.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior())
        self.setLayerWidth(10)
        self.setLayerHeight(10)
        self.`init`(pickedUpLayerInterfaceFactoryInterface, animationInterface)
    }
    

    open func `init`(_ pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface!, _ animationInterface: Animation!) {
        self.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
        self.animationInterface = animationInterface
        self.setDestroyed(false)
    }
    

    open func initXYZ(_ x: Int32, _ y: Int32, _ z: Int32) {
        self.setPosition(x, y, z)
    }
    

    open override func paint(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.getViewPosition()
        let viewX: Int32 = viewPosition.getX()
        let viewY: Int32 = viewPosition.getY()
        self.animationInterface.paintXY(graphics, viewX, viewY)
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.getViewPosition()
        let viewX: Int32 = viewPosition.getX()
        let viewY: Int32 = viewPosition.getY()
        self.animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3)
    }
    

    @discardableResult open func getPickedUpLayerInterfaceFactoryInterface() -> PickedUpLayerInterfaceFactoryInterface! {
        return self.pickedUpLayerInterfaceFactoryInterface
    }
    

    open func setPickedUp() {
        self.setDestroyed(true)
    }
    

    @discardableResult open override func isDestroyed() -> Bool {
        return self.destroyed
    }
    

    open func setDestroyed(_ destroyed: Bool) {
        self.destroyed = destroyed
        if (self.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(self)
        }
    }
    

    open override func damage(_ damage: Int32, _ damageType: Int32) {
    }
    

    @discardableResult open override func getDamage(_ damageType: Int32) -> Int32 {
        return 0
    }
    

    open override func set(_ gl: GL!) {
        let openGLSurfaceChangedInterface: OpenGLSurfaceChangedInterface! = (self.animationInterface as Any as? OpenGLSurfaceChangedInterface)
        openGLSurfaceChangedInterface.set(gl)
    }
}

