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
// package org.allbinary.game.part

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class MakeCountedPartsSingletonArrayFactory: JObject {
    fileprivate static let instance: MakeCountedPartsSingletonArrayFactory! = MakeCountedPartsSingletonArrayFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.list = BasicArrayListUtil.getInstance().getImmutableInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> MakeCountedPartsSingletonArrayFactory! {
        return MakeCountedPartsSingletonArrayFactory.instance
    }
    

    @discardableResult open func getUpdated(_ partInterfaceArray: JArray<PartInterface?>!) -> JArray<PartInterface?>! {
        self.list = BasicArrayListD()
        do {
            var index: Int32 = 0
            while (index < partInterfaceArray.length) {
                defer { index &+= 1 }
            self.list.add((partInterfaceArray[index] as? JObject))
            }
        }
        let countedBasicArrayList: BasicArrayList! = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        var layerInterfaceFactoryInterface: CountedPickedUpLayerInterfaceFactory! = nil
        let size: Int32 = countedBasicArrayList.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            layerInterfaceFactoryInterface = (countedBasicArrayList.objectArray[index] as! CountedPickedUpLayerInterfaceFactory)
            self.list.add(CountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface))
            }
        }
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Total Parts: ")
        stringBuffer.appendint(self.list.size())
        stringBuffer.append(" Counted: ")
        stringBuffer.appendint(countedBasicArrayList.size())
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF(stringBuffer.toString(), self, commonStrings.GET_INSTANCE)
        let newPartInterfaceArray: JArray<PartInterface?>! = JArray<PartInterface?>(self.list.size(), nil)
        let newSize: Int32 = newPartInterfaceArray.length
        do {
            var index: Int32 = 0
            while (index < newSize) {
                defer { index &+= 1 }
            newPartInterfaceArray[index] = (self.list.get(index) as! PartInterface)
            }
        }
        return newPartInterfaceArray
    }
}

