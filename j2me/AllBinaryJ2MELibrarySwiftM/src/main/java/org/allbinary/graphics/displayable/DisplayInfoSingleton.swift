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
// package org.allbinary.graphics.displayable

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Displayable
// import org.allbinary.AndroidUtil
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class DisplayInfoSingleton: JObject {
    fileprivate static let SINGLETON: DisplayInfoSingleton! = DisplayInfoSingleton()
    public var logUtil: LogUtil! = nil
    fileprivate var commonLabels: CommonLabels! = nil
    fileprivate var commonSeps: CommonSeps! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    public var ORIENTATION: String! = nil
    public var ADJUSTING_FOR_SCALING_IN_PORTRAIT: String! = nil
    public var ADJUSTING_FOR_SCALING_IN_LANDSCAPE: String! = nil
    fileprivate var last: JArray<Int32>! = nil
    fileprivate var lastHalf: JArray<Int32>! = nil
    fileprivate var full: JArray<Int32>! = nil
    fileprivate var top: Int32 = 0
    fileprivate var left: Int32 = 0
    fileprivate var xOffset: Int32 = 0
    fileprivate var yOffset: Int32 = 0
    fileprivate var scaleLargestTo: Float = 0.0
    public var WIDTH: Int32 = 0
    public var HEIGHT: Int32 = 0
    public var CUSTOM_WIDTH: Int32 = 0
    public var CUSTOM_HEIGHT: Int32 = 0
    fileprivate var scalableListener: BaseScalable! = nil
    fileprivate var displayRatio: Float = 0.0
    fileprivate var ratio: Float = 0.0
    fileprivate var SET_LAST_SIZE_METHOD_NAME: String! = nil
    fileprivate var FULL_WIDTH: String! = nil
    fileprivate var FULL_HEIGHT: String! = nil
    fileprivate var LAST_WIDTH: String! = nil
    fileprivate var LAST_HEIGHT: String! = nil
    fileprivate var PORTRAIT: String! = nil
    fileprivate var LANDSCAPE: String! = nil
    public var displayChangeEvent: DisplayChangeEvent! = nil
    fileprivate var FIRE_METHOD_NAME: String! = nil
    fileprivate var REASON: String! = nil
    fileprivate var UPDATE_FROM_ORIENTATION_CHANGE: String! = nil
    fileprivate var list: BasicArrayList! = nil
    fileprivate var DISPLAY_INFO: String! = nil
    fileprivate var FULL: String! = nil
    fileprivate var LAST: String! = nil
    fileprivate var LAST_HALF: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonLabels = CommonLabels.getInstance()
    self.commonSeps = CommonSeps.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.ORIENTATION = "ORIENTATION"
    self.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
    self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
    self.last = JArray<Int32>(4, 0)
    self.lastHalf = JArray<Int32>(4, 0)
    self.full = JArray<Int32>(4, 0)
    self.top = 0
    self.left = 0
    self.xOffset = 0
    self.yOffset = 0
    self.scaleLargestTo = 0.0
    self.WIDTH = 0
    self.HEIGHT = 1
    self.CUSTOM_WIDTH = 2
    self.CUSTOM_HEIGHT = 3
    self.scalableListener = BaseScalable()
    self.displayRatio = 0.0
    self.ratio = 1.0
    self.SET_LAST_SIZE_METHOD_NAME = "setLastSize"
    self.FULL_WIDTH = " FullWidth: "
    self.FULL_HEIGHT = " FullHeight: "
    self.LAST_WIDTH = "LastWidth: "
    self.LAST_HEIGHT = " LastHeight: "
    self.PORTRAIT = "Portrait"
    self.LANDSCAPE = "Landscape"
    self.displayChangeEvent = DisplayChangeEvent(self)
    self.FIRE_METHOD_NAME = "fire"
    self.REASON = "reason: "
    self.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
    self.list = BasicArrayListD()
    self.DISPLAY_INFO = "Display Info: "
    self.FULL = "full"
    self.LAST = "last"
    self.LAST_HALF = "lastHalf"
    }
    

    @discardableResult open class func getInstance() -> DisplayInfoSingleton! {
        return DisplayInfoSingleton.SINGLETON
    }
    

    public override init() {
        super.init()
        self.initFields()
        let size: Int32 = self.last.length
        do {
            var index: Int32 = 0
            while (index < size) {
                defer { index &+= 1 }
            self.last[index] = 0
            self.lastHalf[index] = 0
            self.full[index] = 0
            }
        }
        if (AndroidUtil.isAndroid()) {
            self.scaleLargestTo = 640.0
        } else {
            self.scaleLargestTo = 1080.0
        }
    }
    

    @discardableResult open func getLastHalf() -> JArray<Int32>! {
        return self.lastHalf
    }
    

    @discardableResult open func getLast() -> JArray<Int32>! {
        return self.last
    }
    

    @discardableResult open func getFull() -> JArray<Int32>! {
        return self.full
    }
    

    @discardableResult open func getScaleLargestTo() -> Float {
        return self.scaleLargestTo
    }
    

    open func setScaleLargestTo(_ scaleLargestTo: Int32) {
        self.scaleLargestTo = Float(scaleLargestTo)
    }
    

    open func setLastSize(_ aLastWidth: Int32, _ aLastHeight: Int32, _ reason: String!) {
        if (self.full[self.WIDTH] != aLastWidth || self.full[self.HEIGHT] != aLastHeight) {
            self.setLastSizeForce(aLastWidth, aLastHeight, reason)
        }
    }
    

    fileprivate func setLastSizeForce(_ aLastWidth: Int32, _ aLastHeight: Int32, _ reason: String!) {
        var aLastWidth: Int32 = aLastWidth
        var aLastHeight: Int32 = aLastHeight
        let stringMaker: StringMaker! = StringMaker()
        self.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).toString(), self, self.SET_LAST_SIZE_METHOD_NAME)
        let aFullWidth: Int32 = aLastWidth
        let aFullHeight: Int32 = aLastHeight
        stringMaker.delete(0, stringMaker.length())
        self.logUtil.putF(stringMaker.append(self.FULL_WIDTH).appendint(aFullWidth).append(self.FULL_HEIGHT).appendint(aFullHeight).append(self.toString()).toString(), self, self.SET_LAST_SIZE_METHOD_NAME)
        let operatingSystemInterface: GenericOperatingSystem! = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = aLastWidth &* operatingSystemInterface.getOverScanXPercent() / 100
            aLastHeight = aLastHeight &* operatingSystemInterface.getOverScanYPercent() / 100
        }
        if (operatingSystemInterface.isScalable()) {
            if (self.isPortraitWH(aLastWidth, aLastHeight)) {
                if (Float(aLastHeight) > self.scaleLargestTo) {
                    self.displayRatio = self.scaleLargestTo / Float(aLastHeight)
                    self.ratio = Float(aLastHeight) / self.scaleLargestTo
                    stringMaker.delete(0, stringMaker.length())
                    self.logUtil.putF(stringMaker.append(self.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(self.displayRatio).toString(), self, self.SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = JMath.toInt32(Double((Float(aLastWidth) * self.displayRatio)))
                    aLastHeight = JMath.toInt32(Double((Float(aLastHeight) * self.displayRatio)))
                    self.scalableListener.scale(self.ratio)
                } else {
                    self.ratio = 1.0
                    self.scalableListener.scale(self.ratio)
                }
            } else {
                if (Float(aLastWidth) > self.scaleLargestTo) {
                    self.displayRatio = self.scaleLargestTo / Float(aLastWidth)
                    self.ratio = Float(aLastWidth) / self.scaleLargestTo
                    stringMaker.delete(0, stringMaker.length())
                    self.logUtil.putF(stringMaker.append(self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(self.displayRatio).toString(), self, self.SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = JMath.toInt32(Double((Float(aLastWidth) * self.displayRatio)))
                    aLastHeight = JMath.toInt32(Double((Float(aLastHeight) * self.displayRatio)))
                    self.scalableListener.scale(self.ratio)
                } else {
                    self.ratio = 1.0
                    self.scalableListener.scale(self.ratio)
                }
            }
        }
        stringMaker.delete(0, stringMaker.length())
        self.logUtil.putF(stringMaker.append(self.LAST_WIDTH).appendint(aLastWidth).append(self.LAST_HEIGHT).appendint(aLastHeight).toString(), self, self.SET_LAST_SIZE_METHOD_NAME)
        self.xOffset = aFullWidth &- aLastWidth
        self.yOffset = aFullHeight &- aLastHeight
        self.left = self.scalableListener.getLeft(self.xOffset)
        self.top = self.scalableListener.getTop(self.yOffset)
        self.full[self.WIDTH] = aFullWidth
        self.full[self.HEIGHT] = aFullHeight
        self.last[self.WIDTH] = aLastWidth
        self.lastHalf[self.WIDTH] = (self.last[self.WIDTH] >> 1)
        self.last[self.HEIGHT] = aLastHeight
        self.lastHalf[self.HEIGHT] = (self.last[self.HEIGHT] >> 1)
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, self.ratio)
        self.add(self.SET_LAST_SIZE_METHOD_NAME)
    }
    

    @discardableResult open func isPortraitWH(_ lastWidth: Int32, _ lastHeight: Int32) -> Bool {
        if (lastHeight > lastWidth) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func isPortrait() -> Bool {
        return self.isPortraitWH(self.last[self.WIDTH], self.last[self.HEIGHT])
    }
    

    open func add(_ reason: String!) {
        let stringMaker: StringMaker! = StringMaker()
        self.logUtil.putF(stringMaker.append(self.REASON).append(reason).toString(), self, self.FIRE_METHOD_NAME)
        stringMaker.delete(0, stringMaker.length())
        self.logUtil.putF(self.toStringAppend(stringMaker), self, self.FIRE_METHOD_NAME)
        self.list.add(jBoxString(reason))
    }
    

    open func process() {
        do {
            if (self.list.size() > 0) {
                self.processForced()
            }
            self.list.clear()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func processForced() {
        do {
            let swtJOGLProcessor: SWTJOGLProcessor! = SWTJOGLProcessor.getInstance()
            swtJOGLProcessor.clear()
            DisplayChangeEventHandler.getInstance().fireEvent(self.displayChangeEvent)
            LastDisplayChangeEventHandler.getInstance().fireEvent(self.displayChangeEvent)
            swtJOGLProcessor.onSurfaceChanged()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open func update(_ displayable: Displayable!, _ reason: String!) {
        var aLastWidth: Int32 = displayable.getWidth()
        var aLastHeight: Int32 = displayable.getHeight()
        let aFullWidth: Int32 = aLastWidth
        let aFullHeight: Int32 = aLastHeight
        let stringMaker: StringMaker! = StringMaker()
        self.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(self.LAST_WIDTH).appendint(aLastWidth).append(self.LAST_HEIGHT).appendint(aLastHeight).append(self.commonSeps.SPACE).append(self.toString()).toString(), self, self.commonStrings.UPDATE)
        if (aLastWidth > 0 && aLastHeight > 0) {
            let features: Features! = Features.getInstance()
            let openGLFeatureFactory: OpenGLFeatureFactory! = OpenGLFeatureFactory.getInstance()
            if (!features.isDefault(openGLFeatureFactory.OPENGL) || self.last[self.WIDTH] != aLastWidth || self.last[self.HEIGHT] != aLastHeight) {
                stringMaker.delete(0, stringMaker.length())
                self.logUtil.putF(stringMaker.append(self.UPDATE_FROM_ORIENTATION_CHANGE).toString(), self, self.commonStrings.UPDATE)
                let operatingSystemInterface: GenericOperatingSystem! = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = aLastWidth &* operatingSystemInterface.getOverScanXPercent() / 100
                    aLastHeight = aLastHeight &* operatingSystemInterface.getOverScanYPercent() / 100
                }
                if (operatingSystemInterface.isScalable()) {
                    if (self.isPortraitWH(aLastWidth, aLastHeight)) {
                        if (Float(aLastHeight) > self.scaleLargestTo) {
                            self.displayRatio = self.scaleLargestTo / Float(aLastHeight)
                            self.ratio = Float(aLastHeight) / self.scaleLargestTo
                            stringMaker.delete(0, stringMaker.length())
                            self.logUtil.putF(stringMaker.append(self.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(self.displayRatio).toString(), self, self.commonStrings.UPDATE)
                            aLastWidth = JMath.toInt32(Double((Float(aLastWidth) * self.displayRatio)))
                            aLastHeight = JMath.toInt32(Double((Float(aLastHeight) * self.displayRatio)))
                            self.scalableListener.scale(self.ratio)
                        } else {
                            self.ratio = 1.0
                            self.scalableListener.scale(self.ratio)
                        }
                    } else {
                        if (Float(aLastWidth) > self.scaleLargestTo) {
                            self.displayRatio = self.scaleLargestTo / Float(aLastWidth)
                            self.ratio = Float(aLastWidth) / self.scaleLargestTo
                            stringMaker.delete(0, stringMaker.length())
                            self.logUtil.putF(stringMaker.append(self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(self.displayRatio).toString(), self, self.commonStrings.UPDATE)
                            aLastWidth = JMath.toInt32(Double((Float(aLastWidth) * self.displayRatio)))
                            aLastHeight = JMath.toInt32(Double((Float(aLastHeight) * self.displayRatio)))
                            self.scalableListener.scale(self.ratio)
                        } else {
                            self.ratio = 1.0
                            self.scalableListener.scale(self.ratio)
                        }
                    }
                }
                stringMaker.delete(0, stringMaker.length())
                self.logUtil.putF(stringMaker.append(self.UPDATE_FROM_ORIENTATION_CHANGE).append(self.LAST_WIDTH).appendint(aLastWidth).append(self.LAST_HEIGHT).appendint(aLastHeight).toString(), self, self.commonStrings.UPDATE)
                self.xOffset = aFullWidth &- aLastWidth
                self.yOffset = aFullHeight &- aLastHeight
                self.left = self.scalableListener.getLeft(self.xOffset)
                self.top = self.scalableListener.getTop(self.yOffset)
                self.full[self.WIDTH] = aFullWidth
                self.full[self.HEIGHT] = aFullHeight
                self.last[self.WIDTH] = aLastWidth
                self.lastHalf[self.WIDTH] = (self.last[self.WIDTH] >> 1)
                self.last[self.HEIGHT] = aLastHeight
                self.lastHalf[self.HEIGHT] = (self.last[self.HEIGHT] >> 1)
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, self.ratio)
                self.add(self.commonStrings.UPDATE)
            }
        }
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        return self.toStringAppend(stringBuffer)
    }
    

    @discardableResult open func toStringAppend(_ stringBuffer: StringMaker!) -> String! {
        stringBuffer.append(self.DISPLAY_INFO)
        stringBuffer.append(self.FULL)
        stringBuffer.append(self.commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.full[self.WIDTH])
        stringBuffer.append(self.commonSeps.SPACE)
        stringBuffer.append(self.FULL)
        stringBuffer.append(self.commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.full[self.HEIGHT])
        stringBuffer.append(self.commonSeps.SPACE)
        stringBuffer.append(self.LAST)
        stringBuffer.append(self.commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.last[self.WIDTH])
        stringBuffer.append(self.commonSeps.SPACE)
        stringBuffer.append(self.LAST)
        stringBuffer.append(self.commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.last[self.HEIGHT])
        stringBuffer.append(self.commonSeps.SPACE)
        stringBuffer.append(self.LAST_HALF)
        stringBuffer.append(self.commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.lastHalf[self.WIDTH])
        stringBuffer.append(self.commonSeps.SPACE)
        stringBuffer.append(self.LAST_HALF)
        stringBuffer.append(self.commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.lastHalf[self.HEIGHT])
        stringBuffer.append(self.commonSeps.SPACE)
        stringBuffer.append((self.isPortrait() ? self.PORTRAIT : self.LANDSCAPE))
        return stringBuffer.toString()
    }
    

    @discardableResult open func getTop() -> Int32 {
        return self.top
    }
    

    @discardableResult open func getLeft() -> Int32 {
        return self.left
    }
    

    @discardableResult open func getLastWidth() -> Int32 {
        return self.last[self.WIDTH]
    }
    

    @discardableResult open func getLastHeight() -> Int32 {
        return self.last[self.HEIGHT]
    }
    

    @discardableResult open func getLastHalfWidth() -> Int32 {
        return self.lastHalf[self.WIDTH]
    }
    

    @discardableResult open func getLastHalfHeight() -> Int32 {
        return self.lastHalf[self.HEIGHT]
    }
    

    @discardableResult open func getCustomLastWidth() -> Int32 {
        return self.last[self.CUSTOM_WIDTH]
    }
    

    @discardableResult open func getCustomLastHeight() -> Int32 {
        return self.last[self.CUSTOM_HEIGHT]
    }
    

    @discardableResult open func getRawLastWidth() -> Int32 {
        return self.last[self.WIDTH]
    }
    

    @discardableResult open func getRawLastHeight() -> Int32 {
        return self.last[self.HEIGHT]
    }
    

    open func setCustom(_ width: Int32, _ height: Int32) {
        self.last[self.CUSTOM_WIDTH] = width
        self.lastHalf[self.CUSTOM_WIDTH] = (self.last[self.CUSTOM_WIDTH] >> 1)
        self.last[self.CUSTOM_HEIGHT] = height
        self.lastHalf[self.CUSTOM_HEIGHT] = (self.last[self.CUSTOM_HEIGHT] >> 1)
    }
    

    open func setScalableListener(_ scalableListener: BaseScalable!) {
        self.scalableListener = scalableListener
    }
    

    @discardableResult open func getScalableListener() -> ScalableListener! {
        return self.scalableListener
    }
    

    @discardableResult open func getRatio() -> Float {
        return self.ratio
    }
    

    @discardableResult open func getDisplayRatio() -> Float {
        return self.displayRatio
    }
    

    open func setOffset(_ left: Int32, _ top: Int32) {
        self.left = left
    }
    

    @discardableResult open func getxOffset() -> Int32 {
        return self.xOffset
    }
    

    @discardableResult open func getyOffset() -> Int32 {
        return self.yOffset
    }
}

