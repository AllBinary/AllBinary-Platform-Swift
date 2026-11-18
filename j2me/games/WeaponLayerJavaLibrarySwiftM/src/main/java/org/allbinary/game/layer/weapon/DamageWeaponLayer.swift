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
// package org.allbinary.game.layer.weapon

import J2SEForSwiftLibrary
// import org.allbinary.animation.Animation
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.physics.movement.Movement
// import org.allbinary.view.ViewPositionBase

open class DamageWeaponLayer: WeaponLayer {
    

    public init(_ name: String!, _ remoteInfo: RemoteInfo!, _ movement: Movement!, _ animationInterface: Animation!, _ destroyedAnimationInterface: Animation!, _ rectangle: Rectangle!, _ viewPosition: ViewPositionBase!, _ username: String!, _ actorSessionId: Int32, _ id: Int32, _ multiPlayerType: Int32) {
        super.init(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        self.setCollidableInferface(CollidableDamageWeaponBehavior(true))
    }
}

