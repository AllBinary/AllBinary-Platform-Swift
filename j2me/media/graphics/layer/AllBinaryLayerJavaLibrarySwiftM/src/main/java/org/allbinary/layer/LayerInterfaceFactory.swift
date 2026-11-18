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
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

open class LayerInterfaceFactory: JObject {
    fileprivate static let SINGLETON: LayerInterfaceFactory! = LayerInterfaceFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var HASHTABLE_LABEL: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.list = BasicArrayListUtil.getInstance().getImmutableInstance()
    self.HASHTABLE_LABEL = "Hashtable: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LayerInterfaceFactory! {
        return LayerInterfaceFactory.SINGLETON
    }
    

    open func `init`() {
        self.list = BasicArrayListD()
    }
    

    @discardableResult open func getNexInstance(_ hashtable: ABHashtable!, _ x: Int32, _ y: Int32, _ z: Int32) -> AllBinaryLayer! {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        self.logUtil.putF(StringMaker().append(self.HASHTABLE_LABEL).append(StringUtil.getInstance().toString(hashtable)).toString(), self, commonStrings.GET_INSTANCE)
        let typeInteger: Int32! = jUnboxValue(hashtable.get((Layer.ID as! JObject)), Int32.self)
        let layerInterfaceFactoryInterface: LayerInterfaceFactoryInterface! = (self.list.objectArray[typeInteger.intValue() - 1] as! LayerInterfaceFactoryInterface)
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z)
    }
    

    open func add(_ layerInterfaceFactoryInterface: LayerInterfaceFactoryInterface!) {
        self.list.add((layerInterfaceFactoryInterface as? JObject))
    }
}

