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
// import org.allbinary.TsUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

open class LayerManagerLogging: LayerManagerLoggingBase {
    fileprivate static let instance: LayerManagerLogging! = LayerManagerLogging()
    fileprivate static var removeFailed: Bool = false
    public var logUtil: LogUtil! = nil
    fileprivate var stringBuilder: StringMaker! = nil
    fileprivate var APPEND: String! = nil
    fileprivate var APPEND_: String! = nil
    fileprivate var _AT_: String! = nil
    fileprivate var ATTEMPT_REMOVE_: String! = nil
    fileprivate var REMOVE_: String! = nil
    fileprivate var REMOVE: String! = nil
    fileprivate var DID_NOT_REMOVE: String! = nil
    fileprivate var CLEAR: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.stringBuilder = StringMaker()
    self.APPEND = "append"
    self.APPEND_ = " append: "
    self._AT_ = " at: "
    self.ATTEMPT_REMOVE_ = " Remove Attempt: "
    self.REMOVE_ = " Remove: "
    self.REMOVE = "remove"
    self.DID_NOT_REMOVE = " Did not remove: "
    self.CLEAR = " Clear List"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> LayerManagerLogging! {
        return LayerManagerLogging.instance
    }
    

    open override func append(_ layerInterface: AllBinaryLayer!) {
        self.stringBuilder.delete(0, self.stringBuilder.length())
        self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.APPEND_).append(layerInterface.getName()).toString(), self, self.APPEND)
    }
    

    open override func appendAt(_ layerInterface: AllBinaryLayer!, _ index: Int32) {
        self.stringBuilder.delete(0, self.stringBuilder.length())
        self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.APPEND_).append(layerInterface.getName()).append(self._AT_).appendint(index).toString(), self, self.APPEND)
    }
    

    open override func remove(_ layerInterface: AllBinaryLayer!) {
        if (layerInterface == nil) {
            self.stringBuilder.delete(0, self.stringBuilder.length())
            self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.ATTEMPT_REMOVE_).append(StringUtil.getInstance().toString(layerInterface)).toString(), self, self.REMOVE)
        } else {
            self.stringBuilder.delete(0, self.stringBuilder.length())
            self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.ATTEMPT_REMOVE_).append(layerInterface.getName()).toString(), self, self.REMOVE)
        }
    }
    

    open override func removeResult(_ layerManager: LayerManager!, _ layerInterface: AllBinaryLayer!, _ result: Bool) {
        if (layerInterface == nil) {
            self.stringBuilder.delete(0, self.stringBuilder.length())
            self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.REMOVE_).append(StringUtil.getInstance().toString(layerInterface)).toString(), self, self.REMOVE)
        } else if (result) {
            if (LayerManagerLogging.removeFailed) {
                self.stringBuilder.delete(0, self.stringBuilder.length())
                self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.REMOVE_).append(layerInterface.getName()).toString(), self, self.REMOVE)
            }
        } else {
            self.stringBuilder.delete(0, self.stringBuilder.length())
            self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.DID_NOT_REMOVE).append(layerInterface.getName()).toString(), self, self.REMOVE)
            LayerManagerLogging.removeFailed = true
        }
    }
    

    fileprivate func log(_ layerManager: LayerManager!) {
        self.stringBuilder.delete(0, self.stringBuilder.length())
        let size: Int32 = layerManager.getSize()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        self.stringBuilder.append(Integer.toHexString(TsUtil.getInstance().hashCode(layerManager))).append(commonSeps.COLON_SEP)
        self.stringBuilder.appendint(size).append(commonSeps.COLON_SEP)
        var allBinaryLayer: AllBinaryLayer! = nil
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            allBinaryLayer = ((layerManager.getLayerAt(index) as! AllBinaryLayer))
            self.stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA)
            }
        }
        self.logUtil.putF(self.stringBuilder.toString(), self, self.REMOVE)
    }
    

    open override func clear() {
        self.stringBuilder.delete(0, self.stringBuilder.length())
        self.logUtil.putF(self.stringBuilder.appendint(TsUtil.getInstance().hashCode(self)).append(self.CLEAR).toString(), self, self.CLEAR)
    }
}

