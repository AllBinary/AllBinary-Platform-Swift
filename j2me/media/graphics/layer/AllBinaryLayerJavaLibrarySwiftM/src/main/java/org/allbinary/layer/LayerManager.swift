// Generated Code Do Not Modify
// package org.allbinary.layer

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.SynchObject
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.logic.ABSystemWrapper

open class LayerManager: JObject {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var systemWrapper: ABSystemWrapper! = nil
    fileprivate var tsUtil: TsUtil! = nil
    fileprivate var layerManagerLogging: LayerManagerLoggingBase! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var anyType: SynchObject! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.systemWrapper = ABSystemWrapper.getInstance()
    self.tsUtil = TsUtil.getInstance()
    
    self.list = BasicArrayListD()
    self.anyType = SynchObject()
    }
    

    public init(_ layerManagerLogging: LayerManagerLoggingBase!) {
        super.init()
        self.initFields()
        self.logUtil.putF(self.commonStrings.START, self, self.commonStrings.CONSTRUCTOR)
        self.layerManagerLogging = layerManagerLogging
    }
    

    @discardableResult open func contains(_ layerInterface: AllBinaryLayer!) -> Bool {
        return self.list.contains(layerInterface)
    }
    

    open func update(_ layerInterface: AllBinaryLayer!) {
        let had: Bool = self.list.remove(layerInterface)
        if (had) {
            var nextLayerInterface: AllBinaryLayer! = nil
            let size: Int32 = self.list.size()
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                nextLayerInterface = (self.list.get(index) as! AllBinaryLayer)
                if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                    self.list.addAt(index, layerInterface)
                    return
                }
                }
            }
            self.list.add(layerInterface)
        }
    }
    

    open func insert(_ layerInterface: AllBinaryLayer!) {
        var nextLayerInterface: AllBinaryLayer! = nil
        let size: Int32 = self.list.size()
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            nextLayerInterface = (self.list.get(index) as! AllBinaryLayer)
            if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                self.appendAt(layerInterface, index)
                return
            }
            }
        }
        self.append(layerInterface)
    }
    

    open func append(_ layerInterface: AllBinaryLayer!) {
        self.layerManagerLogging.append(layerInterface)
        self.list.add(layerInterface)
    }
    

    open func appendAt(_ layerInterface: AllBinaryLayer!, _ index: Int32) {
        self.layerManagerLogging.appendAt(layerInterface, index)
        self.list.addAt(index, layerInterface)
    }
    

    open func remove(_ layerInterface: AllBinaryLayer!) {
        do {
            self.layerManagerLogging.remove(layerInterface)
            let result: Bool = self.list.remove(layerInterface)
            self.layerManagerLogging.removeResult(self, layerInterface, result)
        }
    }
    

    @discardableResult open func getLayerAt(_ index: Int32) -> Layer! {
        return (self.list.objectArray[index] as! Layer)
    }
    

    @discardableResult open func getSize() -> Int32 {
        return self.list.size()
    }
    

    open func cleanup() {
        do {
            self.list.clear()
            self.layerManagerLogging.clear()
            self.tsUtil.gc()
            self.tsUtil.gc()
        }
    }
    

    open func paint(_ g: Graphics!, _ x: Int32, _ y: Int32) {
        do {
            var comp: Layer! = nil
            do {
                var index: Int32 = self.list.size()
                while (jPreDecrement(&index) >= 0) {
                comp = (self.list.objectArray[index] as! Layer)
                if (comp != nil && comp.isVisible()) {
                    comp.paint(g)
                }
                }
            }
        }
    }
}

