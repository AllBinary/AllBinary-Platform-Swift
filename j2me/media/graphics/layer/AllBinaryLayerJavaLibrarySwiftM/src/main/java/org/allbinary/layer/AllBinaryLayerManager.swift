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
// import org.allbinary.layer.event.LayerManagerEvent
// import org.allbinary.layer.event.LayerManagerEventHandler

open class AllBinaryLayerManager: LayerManager {
    fileprivate var layerManagerEventHandler: LayerManagerEventHandler! = nil
    fileprivate var createLayerManagerEvent: LayerManagerEvent! = nil
    fileprivate var deleteLayerManagerEvent: LayerManagerEvent! = nil
    fileprivate var basicLayerProcessorArray: JArray<LayerProcessor?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.layerManagerEventHandler = LayerManagerEventHandler.getInstance()
    self.createLayerManagerEvent = LayerManagerEvent(self, self.layerManagerEventHandler.CREATE)
    self.deleteLayerManagerEvent = LayerManagerEvent(self, self.layerManagerEventHandler.DELETE)
    self.basicLayerProcessorArray = JArray<LayerProcessor?>(0, nil)
    }
    

    public init() {
        super.init(LayerManagerNoDebug.getInstance())
        self.initFields()
    }
    

    @discardableResult open func getLayerProcessorArray() -> JArray<LayerProcessor?>! {
        return self.basicLayerProcessorArray
    }
    

    open func setLayerProcessorArray(_ layerProcessorArray: JArray<LayerProcessor?>!) {
        self.basicLayerProcessorArray = layerProcessorArray
    }
    

    public func log() {
        let size: Int32 = self.basicLayerProcessorArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            _ = self.basicLayerProcessorArray[index]
            }
        }
    }
    

    open override func append(_ layerInterface: AllBinaryLayer!) {
        if (!self.contains(layerInterface)) {
            self.appendProcessors(layerInterface)
            super.append(layerInterface)
        }
    }
    

    open override func appendAt(_ layerInterface: AllBinaryLayer!, _ index: Int32) {
        if (!self.contains(layerInterface)) {
            self.appendProcessors(layerInterface)
            super.appendAt(layerInterface, index)
        }
    }
    

    fileprivate func appendProcessors(_ layerInterface: AllBinaryLayer!) {
        self.createLayerManagerEvent.setLayerInterface(layerInterface)
        self.layerManagerEventHandler.fireEvent(self.createLayerManagerEvent)
        var layerProcessorInterface: LayerProcessor! = nil
        do {
            var index: Int32 = self.basicLayerProcessorArray.length
            while (jPreDecrement(&index) >= 0) {
            layerProcessorInterface = self.basicLayerProcessorArray[index]
            if (layerProcessorInterface.isProcessorLayer(layerInterface)) {
                layerProcessorInterface.getLayerManager().append(layerInterface)
            }
            }
        }
    }
    

    open override func remove(_ layerInterface: AllBinaryLayer!) {
        self.deleteLayerManagerEvent.setLayerInterface(layerInterface)
        self.layerManagerEventHandler.fireDeleteEvent(self.deleteLayerManagerEvent)
        var layerProcessorInterface: LayerProcessor! = nil
        do {
            var index: Int32 = self.basicLayerProcessorArray.length
            while (jPreDecrement(&index) >= 0) {
            layerProcessorInterface = self.basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().remove(layerInterface)
            }
        }
        super.remove(layerInterface)
    }
    

    open func process() {
        var layerProcessorInterface: LayerProcessor! = nil
        let size: Int32 = self.basicLayerProcessorArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            layerProcessorInterface = self.basicLayerProcessorArray[index]
            layerProcessorInterface.process(self)
            }
        }
    }
    

    open override func cleanup() {
        var layerProcessorInterface: LayerProcessor! = nil
        let size: Int32 = self.basicLayerProcessorArray.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            layerProcessorInterface = self.basicLayerProcessorArray[index]
            layerProcessorInterface.getLayerManager().cleanup()
            }
        }
        super.cleanup()
    }
}

