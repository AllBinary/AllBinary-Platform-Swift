// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop

import J2SEForSwiftLibrary
// import org.allbinary.layer.AllBinaryLayerFactoryInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class PlacedLayerFactory: JObject {
    fileprivate static let instance: PlacedLayerFactory! = PlacedLayerFactory()
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
    

    @discardableResult open class func getInstance() -> PlacedLayerFactory! {
        return PlacedLayerFactory.instance
    }
    

    @discardableResult open func getSize() -> Int32 {
        return self.list.size()
    }
    

    @discardableResult open func getRandomInstance() -> AllBinaryLayerFactoryInterface! {
        return (self.basicArrayListUtil.getRandom(self.list) as Any as? AllBinaryLayerFactoryInterface)
    }
    

    open func add(_ layerInterfaceFactoryInterface: AllBinaryLayerFactoryInterface!) {
        self.list.add((layerInterfaceFactoryInterface as? JObject))
    }
}

