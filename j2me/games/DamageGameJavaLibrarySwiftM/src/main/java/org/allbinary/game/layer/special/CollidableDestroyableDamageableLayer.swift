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
// package org.allbinary.game.layer.special

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory
// import org.allbinary.game.combat.damage.DamageableInterface
// import org.allbinary.game.combat.destroy.DestroyableInterface
// import org.allbinary.game.combat.destroy.event.DestroyedEvent
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.identification.Group
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.game.layer.pickup.PickupBehavior
// import org.allbinary.game.layer.pickup.PickupCompositeInterface
// import org.allbinary.game.part.PartInterface
// import org.allbinary.game.part.PartInterfaceUtil
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps
// import org.allbinary.view.ViewPositionBase

open class CollidableDestroyableDamageableLayer: CollidableCompositeLayer, DestroyableInterface, DamageableInterface, PickupCompositeInterface, SpecialGameInputInterface {
    fileprivate static var NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate static let READYFOREXPLOSION: String! = "ReadyForExplosion: "
    fileprivate var groupInterface: JArray<Group?>! = nil
    fileprivate var readyForExplosion: Bool = false
    fileprivate var initWidth: Int32 = 0
    fileprivate var initHeight: Int32 = 0
    fileprivate var initX: Int32 = 0
    fileprivate var initY: Int32 = 0
    fileprivate var initZ: Int32 = 0
    public var partInterfaceArrayP: JArray<PartInterface?>! = nil
    fileprivate var pickupBehavior: PickupBehavior! = nil
    public var allBinaryGameLayerManagerP: AllBinaryGameLayerManager! = nil
    public var isDraggable: Bool = false
    public var isDragged: Bool = false
    public var isDropped: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    
    self.readyForExplosion = false
    
    
    self.initX = 0
    self.initY = 0
    self.initZ = 0
    self.partInterfaceArrayP = PartInterfaceUtil.getZeroArray()
    
    self.allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
    self.isDraggable = false
    self.isDragged = false
    self.isDropped = false
    }
    

    @discardableResult open override class func getNullInstance() -> CollidableDestroyableDamageableLayer! {
        if (CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER === NullUtil.getInstance().NULL_OBJECT) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = CollidableDestroyableDamageableLayer(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION)
        }
        return (CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER as! CollidableDestroyableDamageableLayer)
    }
    

    public init(_ groupInterface: JArray<Group?>!, _ name: String!, _ layerInfo: Rectangle!, _ viewPosition: ViewPositionBase!) {
        super.init(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance())
        self.initFields()
        self.initWidth = layerInfo.getWidth()
        self.initHeight = layerInfo.getHeight()
        self.groupInterface = groupInterface
        self.pickupBehavior = PickupBehavior.getNullInstance()
    }
    

    open func initPosition() {
        self.setPosition(self.initX, self.initY, self.initZ)
    }
    

    open func initPositionXYZ(_ x: Int32, _ y: Int32, _ z: Int32) {
        self.initX = x
        self.initY = y
        self.initZ = z
    }
    

    open override func paint(_ graphics: Graphics!) {
        super.paint(graphics)
    }
    

    open func damage(_ damage: Int32, _ damageType: Int32) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func getDamage(_ damageType: Int32) -> Int32 {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func isDestroyed() -> Bool {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open override func getGroupInterface() -> JArray<Group?>! {
        return self.groupInterface
    }
    

    open func setGroupInterface(_ teamInterface: JArray<Group?>!) {
        self.groupInterface = teamInterface
    }
    

    open func setAllBinaryGameLayerManager(_ allBinaryGameLayerManager: AllBinaryGameLayerManager!) {
        self.allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if (self.allBinaryGameLayerManagerP == nil) {
            jThrow(JException("RuntimeException", ""))
        }
    }
    

    @discardableResult public func isReadyForExplosion() -> Bool {
        return self.readyForExplosion
    }
    

    public func setReadyForExplosion(_ isReadyForExplosion: Bool) {
        self.readyForExplosion = isReadyForExplosion
    }
    

    @discardableResult open func getInitWidth() -> Int32 {
        return self.initWidth
    }
    

    @discardableResult open func getInitHeight() -> Int32 {
        return self.initHeight
    }
    

    @discardableResult open func getInitX() -> Int32 {
        return self.initX
    }
    

    @discardableResult open func getInitY() -> Int32 {
        return self.initY
    }
    

    open func up() {
    }
    

    open func down() {
    }
    

    open func right() {
    }
    

    open func left() {
    }
    

    open func strafeLeft() {
    }
    

    open func strafeRight() {
    }
    

    open func fire(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func special1(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func special2(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func special3(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func special4(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func special5(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!) {
    }
    

    open func upAnalog(_ yAnalogValue: Int32) {
    }
    

    open func downAnalog(_ yAnalogValue: Int32) {
    }
    

    open func rightAnalog(_ xAnalogValue: Int32) {
    }
    

    open func leftAnalog(_ xAnalogValue: Int32) {
    }
    

    open func rightTrigger(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!, _ xAnalogValue: Int32) {
    }
    

    open func leftTrigger(_ layerManager: AllBinaryLayerManager!, _ gameKeyEvent: GameKeyEvent!, _ xAnalogValue: Int32) {
    }
    

    open func onDestroyed(_ destroyedEvent: DestroyedEvent!) {
    }
    

    @discardableResult open func getPickupBehavior() -> PickupBehavior! {
        return self.pickupBehavior
    }
    

    open func setPickupBehavior(_ pickupBehavior: PickupBehavior!) {
        self.pickupBehavior = pickupBehavior
    }
    

    open func addPart(_ pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface!) {
    }
    

    open func setPartInterfaceArray(_ partInterfaceArray: JArray<PartInterface?>!) {
        self.partInterfaceArrayP = partInterfaceArray
    }
    

    @discardableResult open func getPartInterfaceArray() -> JArray<PartInterface?>! {
        return self.partInterfaceArrayP
    }
    

    open override func toStringAppend(_ stringBuffer: StringMaker!) {
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let positionStrings: PositionStrings! = PositionStrings.getInstance()
        super.toStringAppend(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        let groupInterfaceArray: JArray<Group?>! = self.getGroupInterface()
        let size: Int32 = groupInterfaceArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            stringBuffer.append(groupInterfaceArray[index]!.toString())
            stringBuffer.append(commonSeps.COMMA)
            }
        }
        let pickupBehavior: PickupBehavior! = self.getPickupBehavior()
        if (pickupBehavior != nil) {
            stringBuffer.append(commonSeps.NEW_LINE)
            stringBuffer.append(pickupBehavior.toString())
        }
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(CollidableDestroyableDamageableLayer.READYFOREXPLOSION)
        stringBuffer.appendboolean(self.readyForExplosion)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(self.commonStrings.INIT)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(self.initX)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(self.initX)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(self.initZ)
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        self.toStringAppend(stringBuffer)
        return stringBuffer.toString()
    }
}

