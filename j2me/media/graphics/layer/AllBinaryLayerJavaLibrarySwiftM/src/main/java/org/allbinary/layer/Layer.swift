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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

open class Layer: JObject {
    public static let ID: Int32! = SmallIntegerSingletonFactory.getInstance().getAt(0)
    public var logUtil: LogUtil! = nil
    public var x: Int32 = 0
    public var y: Int32 = 0
    public var z: Int32 = 0
    fileprivate var width: Int32 = 0
    fileprivate var height: Int32 = 0
    fileprivate var visible: Bool = false

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.x = 0
    self.y = 0
    self.z = 3
    self.width = 0
    self.height = 0
    self.visible = true
    }
    

    public init(_ width: Int32, _ height: Int32) {
        super.init()
        self.initFields()
        self.setLayerWidth(width)
        self.setLayerHeight(height)
    }
    

    open func setPosition(_ x: Int32, _ y: Int32, _ z: Int32) {
        self.x = x
        self.y = y
        self.z = z
    }
    

    open func moveDXY(_ dx: Int32, _ dy: Int32) {
        self.x = self.x &+ dx
        self.y = self.y &+ dy
    }
    

    open func moveDXYZ(_ dx: Int32, _ dy: Int32, _ dz: Int32) {
        self.x = self.x &+ dx
        self.y = self.y &+ dy
        self.z = self.z &+ dz
    }
    

    @discardableResult open func getXP() -> Int32 {
        return self.x
    }
    

    @discardableResult open func getYP() -> Int32 {
        return self.y
    }
    

    @discardableResult open func getZP() -> Int32 {
        return self.z
    }
    

    @discardableResult open func getWidth() -> Int32 {
        return self.width
    }
    

    @discardableResult open func getHeight() -> Int32 {
        return self.height
    }
    

    @discardableResult open func getDepth() -> Int64 {
        return 0
    }
    

    open func setVisible(_ visible: Bool) {
        self.visible = visible
    }
    

    @discardableResult open func isVisible() -> Bool {
        return self.visible
    }
    

    open func paint(_ graphics: Graphics!) {
        let commonStrings: CommonStrings! = CommonStrings.getInstance()
        let canvasStrings: CanvasStrings! = CanvasStrings.getInstance()
        self.logUtil.putF(commonStrings.NOT_IMPLEMENTED, self, canvasStrings.PAINT)
    }
    

    open func setLayerWidth(_ width: Int32) {
        if (width < 0) {
            jThrow(JException("IllegalArgumentException", ""))
        }
        self.width = width
    }
    

    open func setLayerHeight(_ height: Int32) {
        if (height < 0) {
            jThrow(JException("IllegalArgumentException", ""))
        }
        self.height = height
    }
    

    open func toStringAppend(_ stringBuffer: StringMaker!) {
    }
}

