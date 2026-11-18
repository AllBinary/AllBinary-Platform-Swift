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
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BasicLayerProcessor: JObject {
    public static let NULL_LAYER_PROCESSOR: BasicLayerProcessor! = BasicLayerProcessor()
    public var logUtil: LogUtil! = nil
    fileprivate var list: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.list = BasicArrayListD()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func add(_ layerInterface: AllBinaryLayer!) {
        if (!self.list.contains(layerInterface)) {
            self.list.add(layerInterface)
        }
    }
    

    open func process(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        jThrow(JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    @discardableResult open func getList() -> BasicArrayList! {
        return self.list
    }
}

