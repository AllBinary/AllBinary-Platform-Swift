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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary
// import org.allbinary.direction.DirectionFactory

open class LayerPlacementTypeFactory: JObject {
    fileprivate static let instance: LayerPlacementTypeFactory! = LayerPlacementTypeFactory()
    public var MAP: LayerPlacementType! = nil
    public var LEFT: LayerPlacementType! = nil
    public var DOWN: LayerPlacementType! = nil
    public var UP: LayerPlacementType! = nil
    public var RIGHT: LayerPlacementType! = nil

    private func initFields() {
    self.MAP = LayerPlacementType(Integer.MAX_VALUE)
    self.LEFT = LayerPlacementType(DirectionFactory.getInstance().LEFT.getValue())
    self.DOWN = LayerPlacementType(DirectionFactory.getInstance().DOWN.getValue())
    self.UP = LayerPlacementType(DirectionFactory.getInstance().UP.getValue())
    self.RIGHT = LayerPlacementType(DirectionFactory.getInstance().RIGHT.getValue())
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LayerPlacementTypeFactory! {
        return LayerPlacementTypeFactory.instance
    }
}

