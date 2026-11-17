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

open class BasicColorUtil: JObject {
    fileprivate static let instance: BasicColorUtil! = BasicColorUtil()
    public var ZERO_ARRAY: JArray<BasicColor?>! = nil
    public var ALPHA: Int32 = 0
    public var isAlpha: Bool = false
    public var ffOpaque: Bool = false

    private func initFields() {
    self.ZERO_ARRAY = JArray<BasicColor?>(0, nil)
    self.ALPHA = Int32(bitPattern: 0xFF000000)
    self.isAlpha = true
    self.ffOpaque = true
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> BasicColorUtil! {
        return BasicColorUtil.instance
    }
    

    @discardableResult open func getRGB(_ red: Int32, _ green: Int32, _ blue: Int32) -> Int32 {
        var value: Int32 = 0
        if (self.isAlpha) {
            if (self.ffOpaque) {
                value = self.ALPHA
            }
        }
        value = (red << 16) | value
        value = (green << 8) | value
        value = blue | value
        return value
    }
    

    @discardableResult open func getARGB(_ alphaValue: Int32, _ r: Int32, _ g: Int32, _ b: Int32) -> Int32 {
        return ((alphaValue << 24) & self.ALPHA) &+ ((r << 16) & 0x00FF0000) &+ ((g << 8) & 0x0000FF00) &+ (b & 0x000000FF)
    }
    

    @discardableResult open func get(_ alphaValue: Int32, _ color: Int32) -> Int32 {
        return ((alphaValue << 24) & self.ALPHA) &+ color
    }
    

    @discardableResult open func invert(_ color: Int32) -> Int32 {
        return (0xFFFFFF &- color) | self.ALPHA
    }
}

