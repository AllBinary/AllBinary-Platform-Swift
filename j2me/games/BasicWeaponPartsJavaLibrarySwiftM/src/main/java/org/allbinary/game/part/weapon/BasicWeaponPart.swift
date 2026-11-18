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
// package org.allbinary.game.part.weapon

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.part.PartInterface
// import org.allbinary.game.score.NoScoreable
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.string.CommonStrings
// import org.allbinary.view.ViewPositionBase

open class BasicWeaponPart: JObject, PartInterface, SalvoInterface {
    public static let NULL_BASIC_WEAPON_PART: BasicWeaponPart! = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance(0))
    fileprivate var animationInterface: Animation! = nil
    fileprivate var ownerLayerInterface: AllBinaryLayer! = nil
    fileprivate var weaponProperties: WeaponProperties! = nil
    fileprivate var scoreableInterface: ScoreableInterface! = nil
    public var relativeRelationship: RelativeRelationship! = nil

    private func initFields() {
    self.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    self.ownerLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    self.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES
    self.scoreableInterface = NoScoreable.getInstance()
    self.relativeRelationship = RelativeRelationship.NULL_RELATIVE_RELATIONSHIP
    }
    

    @discardableResult open class func createBasicWeaponPart(_ animationInterface: Animation!) -> BasicWeaponPart! {
        return BasicWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)
    }
    

    public init(_ animationInterface: Animation!, _ sourceLayerInterface: AllBinaryLayer!, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!, _ relativeRelationship: RelativeRelationship!) {
        super.init()
        self.initFields()
        self.`init`(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        self.setAnimationInterface(animationInterface)
    }
    

    open func `init`(_ sourceLayerInterface: AllBinaryLayer!, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!, _ relativeRelationship: RelativeRelationship!) {
        self.setOwnerLayerInterface(sourceLayerInterface)
        self.setWeaponProperties(weaponProperties)
        self.scoreableInterface = scoreableInterface
        self.relativeRelationship = relativeRelationship
    }
    

    open func process(_ allbinaryLayerManager: AllBinaryLayerManager!, _ angle: Int16, _ otherAngle: Int16) {
        self.processScore(allbinaryLayerManager, angle, otherAngle, self.getWeaponProperties(), self.scoreableInterface)
    }
    

    open func processScore(_ allbinaryLayerManager: AllBinaryLayerManager!, _ angle: Int16, _ otherAngle: Int16, _ weaponProperties: WeaponProperties!, _ scoreableInterface: ScoreableInterface!) {
        jThrow(JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    @discardableResult open func getOwnerLayerInterface() -> AllBinaryLayer! {
        return self.ownerLayerInterface
    }
    

    open func setOwnerLayerInterface(_ ownerLayerInterface: AllBinaryLayer!) {
        self.ownerLayerInterface = ownerLayerInterface
    }
    

    @discardableResult open func getAnimationInterface() -> Animation! {
        return self.animationInterface
    }
    

    open func setAnimationInterface(_ animationInterface: Animation!) {
        self.animationInterface = animationInterface
    }
    

    open func paint(_ graphics: Graphics!) {
        let viewPosition: ViewPositionBase! = self.getOwnerLayerInterface().getViewPosition()
        let viewX: Int32 = viewPosition.getX()
        let viewY: Int32 = viewPosition.getY()
        self.animationInterface.paintXY(graphics, viewX, viewY)
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getWeaponProperties() -> WeaponProperties! {
        return self.weaponProperties
    }
    

    open func setWeaponProperties(_ weaponProperties: WeaponProperties!) {
        self.weaponProperties = weaponProperties
    }
}

