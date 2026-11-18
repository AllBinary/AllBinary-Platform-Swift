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
// package org.allbinary.game.layer.drop

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class DropLayerFactory: JObject {
    fileprivate static let DROP_LAYER_FACTORY: DropLayerFactory! = DropLayerFactory()
    fileprivate var list: BasicArrayList! = nil
    fileprivate var basicArrayListUtil: BasicArrayListUtil! = nil

    private func initFields() {
    self.list = BasicArrayListD()
    self.basicArrayListUtil = BasicArrayListUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func clear() {
        self.list.clear()
    }
    

    @discardableResult open class func getInstance() -> DropLayerFactory! {
        return DropLayerFactory.DROP_LAYER_FACTORY
    }
    

    @discardableResult open func getSize() -> Int32 {
        return self.list.size()
    }
    

    @discardableResult open func getRandomInstance() -> PickedUpLayerInterfaceFactoryInterface! {
        return (self.basicArrayListUtil.getRandom(self.list) as! PickedUpLayerInterfaceFactoryInterface)
    }
    

    open func add(_ layerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface!) {
        self.list.add((layerInterfaceFactoryInterface as? JObject))
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

