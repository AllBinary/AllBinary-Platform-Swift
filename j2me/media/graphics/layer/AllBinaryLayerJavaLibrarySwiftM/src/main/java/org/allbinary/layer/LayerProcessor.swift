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
// import org.allbinary.string.CommonStrings

open class LayerProcessor: JObject, LayerProcessorInterface {
    public var commonStrings: CommonStrings! = nil
    fileprivate var layerManager: LayerManager! = nil

    private func initFields() {
    self.commonStrings = CommonStrings.getInstance()
    
    }
    

    public init(_ layerManager: LayerManager!) {
        super.init()
        self.initFields()
        self.layerManager = layerManager
    }
    

    open func processAt(_ allBinaryLayerManager: AllBinaryLayerManager!, _ layerInterface: AllBinaryLayer!, _ index: Int32) {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func isProcessorLayer(_ layerInterface: AllBinaryLayer!) -> Bool {
        jThrow(JException("Exception", self.commonStrings.NOT_IMPLEMENTED))
    }
    

    @discardableResult open func getLayerManager() -> LayerManager! {
        return self.layerManager
    }
    

    open func process(_ allBinaryLayerManager: AllBinaryLayerManager!) {
        let layerManager: LayerManager! = self.getLayerManager()
        let size: Int32 = layerManager.getSize()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.processAt(allBinaryLayerManager, (layerManager.getLayerAt(index) as! AllBinaryLayer), index)
            }
        }
    }
}

