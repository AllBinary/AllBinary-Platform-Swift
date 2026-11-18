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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class CollidableBaseBehavior: JObject, CollidableInterface {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    public var layerCollisionUtil: LayerCollisionUtil! = nil
    fileprivate var collidable: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.layerCollisionUtil = LayerCollisionUtil.getInstance()
    self.collidable = true
    }
    

    public init(_ collidable: Bool) {
        super.init()
        self.initFields()
        self.collidable = collidable
    }
    

    open func update() {
    }
    

    @discardableResult open func getName() -> String! {
        return JObject.className(self)
    }
    

    open func setCollidable(_ collidable: Bool) {
        self.collidable = collidable
    }
    

    @discardableResult open func isCollidable(_ ownerLayer: CollidableCompositeLayer!) -> Bool {
        return self.collidable
    }
    

    open func collide(_ ownerLayer: CollidableCompositeLayer!, _ allbinaryCollidableLayer: CollidableCompositeLayer!) {
        jThrow(JException("Exception", StringMaker().append(self.commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(JObject.className(self)).toString()))
    }
    

    @discardableResult open func isCollision(_ ownerLayer: CollidableCompositeLayer!, _ collisionLayer: CollidableCompositeLayer!) -> Bool {
        return self.layerCollisionUtil.isCollision(ownerLayer, collisionLayer)
    }
    

    @discardableResult open func isCollisionInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) -> Bool {
        return self.layerCollisionUtil.isCollision(ownerLayer, (collidableInterfaceCompositeInterface as! AllBinaryLayer))
    }
    

    open func collideInterface(_ ownerLayer: CollidableCompositeLayer!, _ collidableInterfaceCompositeInterface: CollidableInterfaceCompositeInterface!) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    open func paint(_ ownerLayer: CollidableCompositeLayer!, _ graphics: Graphics!) {
    }
    

    @discardableResult open func getCollisionTypeWith(_ layerInterface: AllBinaryLayer!) -> CollisionType! {
        return CollisionTypeFactory.getInstance().NONE
    }
}

