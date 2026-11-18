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
// package org.allbinary.graphics.color

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

open class BasicColorFactory: JObject {
    fileprivate static let instance: BasicColorFactory! = BasicColorFactory()
    public var NULL_COLOR: BasicColor! = nil
    public var TAN: BasicColor! = nil
    public var SKIN_PINK: BasicColor! = nil
    public var RED: BasicColor! = nil
    public var LIGHT_RED: BasicColor! = nil
    public var DARK_GREEN: BasicColor! = nil
    public var GREEN: BasicColor! = nil
    public var LIGHT_GREEN: BasicColor! = nil
    public var PURPLE: BasicColor! = nil
    public var BLUE: BasicColor! = nil
    public var LIGHT_BLUE: BasicColor! = nil
    public var VERY_LIGHT_BLUE: BasicColor! = nil
    public var PUCE: BasicColor! = nil
    public var AQUA: BasicColor! = nil
    public var YELLOW: BasicColor! = nil
    public var PINK: BasicColor! = nil
    public var BLACK: BasicColor! = nil
    public var GREY: BasicColor! = nil
    public var LIGHT_GREY: BasicColor! = nil
    public var DARK_GREY: BasicColor! = nil
    public var ORANGE: BasicColor! = nil
    public var BROWN: BasicColor! = nil
    public var WHITE: BasicColor! = nil
    public var TRANSPARENT_COLOR: BasicColor! = nil
    public var TRANSPARENT_GREY: BasicColor! = nil
    public var TRANSPARENT_BLACK: BasicColor! = nil
    public var TRANSPARENT_RED: BasicColor! = nil
    public var CLEAR_COLOR: BasicColor! = nil
    public var BORDER_COLOR: BasicColor! = nil

    private func initFields() {
    self.NULL_COLOR = self.createInstanceARGB(255, 255, 255, 255, "null color")
    self.TAN = self.createInstance(0xE9D8B5)
    self.SKIN_PINK = self.createInstance(0xFDCECE)
    self.RED = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFF0000, "red")
    self.LIGHT_RED = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFA0A0, "light red")
    self.DARK_GREEN = self.createInstance(0x00FF00)
    self.GREEN = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x00DD00, "green")
    self.LIGHT_GREEN = self.createInstance(0x007700)
    self.PURPLE = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x400040, "purple")
    self.BLUE = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x0000FF, "blue")
    self.LIGHT_BLUE = self.createInstance(0x00aaff)
    self.VERY_LIGHT_BLUE = self.createInstance(0x000033)
    self.PUCE = self.createInstance(0xFF00AA)
    self.AQUA = self.createInstance(0x00FFFF)
    self.YELLOW = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFFF00, "yellow")
    self.PINK = self.createInstance(0xFF00FF)
    self.BLACK = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x000000, "black")
    self.GREY = self.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xAAAAAA, "grey")
    self.LIGHT_GREY = self.createInstance(0xC0C0C0)
    self.DARK_GREY = self.createInstance(0x404040)
    self.ORANGE = self.createInstance(0xe07718)
    self.BROWN = self.createInstance(0x956B00)
    self.WHITE = self.createInstance(0xFFFFFF)
    self.TRANSPARENT_COLOR = self.createInstanceAN(0x00000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
    self.TRANSPARENT_GREY = self.createInstanceAN(0x52000000, 0xECECEC, StringUtil.getInstance().EMPTY_STRING)
    self.TRANSPARENT_BLACK = self.createInstanceAN(0x52000000, 0x000000, StringUtil.getInstance().EMPTY_STRING)
    self.TRANSPARENT_RED = self.createInstanceAN(0x52000000, 0xFF0000, StringUtil.getInstance().EMPTY_STRING)
    self.CLEAR_COLOR = self.BLACK
    self.BORDER_COLOR = self.WHITE
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BasicColorFactory! {
        return BasicColorFactory.instance
    }
    

    @discardableResult open func createInstance(_ value: Int32) -> BasicColor! {
        return BasicColor(BasicColorUtil.getInstance().ALPHA, value, StringUtil.getInstance().EMPTY_STRING)
    }
    

    @discardableResult open func createInstanceA(_ alphaValue: Int32, _ value: Int32) -> BasicColor! {
        return BasicColor(alphaValue, value, StringUtil.getInstance().EMPTY_STRING)
    }
    

    @discardableResult open func createInstanceAN(_ alphaValue: Int32, _ value: Int32, _ name: String!) -> BasicColor! {
        return BasicColor(alphaValue, value, name)
    }
    

    @discardableResult open func createInstanceARGB(_ alphaValue: Int32, _ r: Int32, _ g: Int32, _ b: Int32, _ name: String!) -> BasicColor! {
        let ALPHA_MASK: Int32 = Int32(bitPattern: 0xFF000000)
        return BasicColor(alphaValue, ((alphaValue << 24) & ALPHA_MASK) &+ ((r << 16) & 0x00FF0000) &+ ((g << 8) & 0x0000FF00) &+ (b & 0x000000FF), StringUtil.getInstance().EMPTY_STRING)
    }
}

