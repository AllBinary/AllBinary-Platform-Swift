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
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.combat.destroy.DestroyedLayerProcessor
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.game.score.NoScoreable
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.game.tick.TickableInterface
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.physics.movement.Movement
// import org.allbinary.view.ViewPosition
// import org.allbinary.view.ViewPositionBase

open class WeaponLayer: MultiPlayerGameLayer, TickableInterface {
    fileprivate var animationInterface: Animation! = nil
    public var initAnimationInterface: Animation! = nil
    fileprivate var destroyedAnimationInterface: Animation! = nil
    fileprivate var sourceLayerInterface: AllBinaryLayer! = nil
    public var totalDamage: Int32 = 0
    fileprivate var initDamage: Int32 = 0
    fileprivate var destroyed: Bool = false
    public var scoreableInterface: ScoreableInterface! = nil
    fileprivate var movement: Movement! = nil
    fileprivate var weaponProperties: WeaponProperties! = nil
    fileprivate var multiPlayerType: Int32 = 0
    fileprivate var collidableWeaponBehavior: CollidableWeaponBehavior! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    
    
    self.sourceLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    self.totalDamage = 0
    self.initDamage = 0
    self.destroyed = true
    self.scoreableInterface = NoScoreable.getInstance()
    
    self.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES
    
    self.collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance()
    }
    

    public init(_ name: String!, _ remoteInfo: RemoteInfo!, _ multiPlayerType: Int32, _ movement: Movement!, _ animationInterface: Animation!, _ destroyedAnimationInterface: Animation!, _ rectangle: Rectangle!, _ viewPosition: ViewPositionBase!) {
        super.init(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        self.initFields()
        self.initAnimationInterface = animationInterface
        self.setAnimationInterface(animationInterface)
        self.destroyedAnimationInterface = destroyedAnimationInterface
        self.movement = movement
        self.multiPlayerType = multiPlayerType
    }
    

    open override func setCollidableInferface(_ collidableInferface: CollidableBaseBehavior!) {
        super.setCollidableInferface(collidableInferface)
        self.collidableWeaponBehavior = (self.getCollidableInferface() as! CollidableWeaponBehavior)
    }
    

    open func initXYZ(_ x: Int32, _ y: Int32, _ z: Int32) {
        self.x = x
        self.y = y
        self.z = z
    }
    

    open func `init`(_ sourceLayerInterface: AllBinaryLayer!, _ angle: Int32, _ otherAngle: Int32, _ weaponProperties: WeaponProperties!, _ scoreable: ScoreableInterface!) {
        self.setWeaponPropertiesP(weaponProperties)
        self.setReadyForExplosion(false)
        self.setAnimationInterface(self.getInitAnimationInterfaceP())
        self.setOwnerLayerInterface(sourceLayerInterface)
        self.collidableWeaponBehavior.`init`(sourceLayerInterface)
        self.setGroupInterfaces()
        if (scoreable != nil) {
            self.scoreableInterface = scoreable
        }
        self.totalDamage = 0
        self.initDamage = weaponProperties.getDamage()
        self.setDestroyed(false)
        self.movement.`init`(weaponProperties.getSpeed(), angle, otherAngle)
    }
    

    open func setGroupInterfaces() {
        let basicGroupFactory: BasicGroupFactory! = BasicGroupFactory.getInstance()
        if (self.sourceLayerInterface.getGroupInterface()[0] === basicGroupFactory.ENEMY) {
            self.setGroupInterface(basicGroupFactory.ENEMY_ARRAY)
        } else {
            self.setGroupInterface(self.sourceLayerInterface.getGroupInterface())
        }
    }
    

    open override func processTick(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        if (self.isExhausted() && !self.isDestroyed()) {
            if (self.isReadyForExplosion()) {
                let indexedAnimationInterface: IndexedAnimation! = (self.getAnimationInterface() as! IndexedAnimation)
                let currentFrame: Int32 = indexedAnimationInterface.getFrame()
                if (currentFrame < indexedAnimationInterface.getAnimationSize() &- 1) {
                    indexedAnimationInterface.nextFrame()
                } else {
                    self.setDestroyed(true)
                }
            } else {
                let collidableWeaponBehavior: CollidableWeaponBehavior! = (self.getCollidableInferface() as! CollidableWeaponBehavior)
                if (collidableWeaponBehavior.isCollided()) {
                    self.setAnimationInterface(self.destroyedAnimationInterface)
                    self.getMovement().stop()
                    self.setReadyForExplosion(true)
                } else {
                    self.setDestroyed(true)
                }
            }
        }
        self.movement.process(self)
        self.totalDamage = self.totalDamage &+ Int32(truncatingIfNeeded: self.weaponProperties.getDissipation())
    }
    

    @discardableResult open override func isDestroyed() -> Bool {
        return self.destroyed
    }
    

    open override func damage(_ damage: Int32, _ damageType: Int32) {
        self.totalDamage = self.totalDamage &+ damage &* damage
    }
    

    open func givePoints(_ total: Int32) {
        self.scoreableInterface.addPoints(GameConfigurationUtil.getInstance().getCompetitionValue() &* total)
    }
    

    @discardableResult open func isExhausted() -> Bool {
        if (self.totalDamage > self.getInitDamage() || self.totalDamage < 0) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open override func getDamage(_ damageType: Int32) -> Int32 {
        if (!self.isExhausted()) {
            let total: Int32 = self.getInitDamage() &- self.totalDamage
            self.givePoints(total)
            return total
        }
        return 0
    }
    

    open func setDestroyed(_ destroyed: Bool) {
        self.destroyed = destroyed
        if (self.isDestroyed()) {
            self.scoreableInterface = NoScoreable.getInstance()
            DestroyedLayerProcessor.getInstance().add(self)
        }
    }
    

    @discardableResult open func getInitDamage() -> Int32 {
        return self.initDamage
    }
    

    open func setAnimationInterface(_ animationInterface: Animation!) {
        self.animationInterface = animationInterface
    }
    

    @discardableResult open func getAnimationInterface() -> Animation! {
        return self.animationInterface
    }
    

    @discardableResult open func getInitAnimationInterfaceP() -> Animation! {
        return self.initAnimationInterface
    }
    

    open func setInitAnimationInterfaceP(_ initAnimationInterface: Animation!) {
        self.initAnimationInterface = initAnimationInterface
    }
    

    @discardableResult open func getDestroyedAnimationInterface() -> Animation! {
        return self.destroyedAnimationInterface
    }
    

    @discardableResult open func getOwnerLayerInterface() -> AllBinaryLayer! {
        return self.sourceLayerInterface
    }
    

    open func setOwnerLayerInterface(_ sourceLayerInterface: AllBinaryLayer!) {
        self.sourceLayerInterface = sourceLayerInterface
    }
    

    open override func paint(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.getViewPosition()
        self.animationInterface.paintXY(graphics, viewPosition.getX() &- self.getHalfWidth(), viewPosition.getY() &- self.getHalfHeight())
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.getViewPosition()
        self.animationInterface.paintThreedXYZ(graphics, viewPosition.getX() &- self.getHalfWidth(), viewPosition.getY() &- self.getHalfHeight(), viewPosition.getZ() &- self.getHalfDepth())
    }
    

    @discardableResult open func getMovement() -> Movement! {
        return self.movement
    }
    

    open func setMovement(_ movement: Movement!) {
        self.movement = movement
    }
    

    @discardableResult open override func getType() -> Int32 {
        return WeaponLayer.getStaticType()
    }
    

    @discardableResult open class func getStaticType() -> Int32 {
        return 0
    }
    

    @discardableResult open override func getMultiPlayerType() -> Int32 {
        return self.multiPlayerType
    }
    

    open func setWeaponPropertiesP(_ weaponProperties: WeaponProperties!) {
        self.weaponProperties = weaponProperties
    }
    

    @discardableResult open func getWeaponPropertiesP() -> WeaponProperties! {
        return self.weaponProperties
    }
    

    @discardableResult open override func implmentsTickableInterface() -> Bool {
        return true
    }
    

    open override func set(_ gl: GL!) {
        self.initAnimationInterface.set(gl)
    }
}

