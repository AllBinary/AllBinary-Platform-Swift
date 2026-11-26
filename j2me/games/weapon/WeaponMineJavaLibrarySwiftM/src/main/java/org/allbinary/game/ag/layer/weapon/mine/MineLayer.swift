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
// package org.allbinary.game.ag.layer.weapon.mine

import J2SEForSwiftLibrary
// import org.allbinary.ag.weapon.media.audio.DropWeaponSound
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.layer.weapon.SimpleWeaponLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.media.audio.SecondaryPlayerQueueFactory
// import org.allbinary.physics.movement.NoMovementFactory
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.view.event.ViewPositionEventHandler

open class MineLayer: SimpleWeaponLayer {
    fileprivate static let NAME: String! = "MineLayer"
    fileprivate var viewPositionEventHandler: ViewPositionEventHandler! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.viewPositionEventHandler = ViewPositionEventHandler.getInstance()
    }
    

    public init(_ viewPosition: ViewPositionBase!) {
        super.init(MineLayer.NAME, RemoteInfo.REMOTE_INFO, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().RESOURCE).getInstance(0), SimpleWeaponLayer.createDestroyed(), Rectangle(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition)
        self.initFields()
    }
    

    open override func initXYZ(_ x: Int32, _ y: Int32, _ z: Int32) {
        self.setPosition(x &+ 5, y &+ 5, z)
        self.viewPositionEventHandler.addListener(self)
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance())
    }
    

    open override func damage(_ damage: Int32, _ damageType: Int32) {
        self.totalDamage = self.getInitDamage() &+ 1
    }
    

    @discardableResult open override func getDamage(_ damageType: Int32) -> Int32 {
        super.getDamage(damageType)
        return self.getInitDamage()
    }
    

    open override func setDestroyed(_ destroyed: Bool) {
        super.setDestroyed(destroyed)
        if (self.isDestroyed()) {
            self.viewPositionEventHandler.removeListener(self)
        }
    }
}

