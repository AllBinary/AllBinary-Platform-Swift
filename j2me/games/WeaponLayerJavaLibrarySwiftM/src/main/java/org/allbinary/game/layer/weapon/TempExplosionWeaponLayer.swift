// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon

import J2SEForSwiftLibrary
// import org.allbinary.animation.Animation
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.physics.movement.Movement
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.view.ViewPositionBase

open class TempExplosionWeaponLayer: SimpleWeaponLayer {
    public var weaponProperties: WeaponProperties! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.weaponProperties = WeaponProperties(-1, -1, 0, 1000, Int16(truncatingIfNeeded: 0))
    self.timeDelayHelper = TimeDelayHelper(0)
    }
    

    public init(_ name: String!, _ movement: Movement!, _ animationInterface: Animation!, _ rectangle: Rectangle!, _ viewPosition: ViewPositionBase!, _ timeDelay: Int32) {
        super.init(name, RemoteInfo.REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition)
        self.initFields()
        self.timeDelayHelper.delay = timeDelay
    }
    

    open override func processTick(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            self.getCollidableInferface().collide(self, self)
            self.totalDamage = self.getInitDamage() &+ 1
        }
        super.processTick(allBinaryLayerManager)
    }
}

