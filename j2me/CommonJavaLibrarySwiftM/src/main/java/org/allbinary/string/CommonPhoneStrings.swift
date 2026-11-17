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
// package org.allbinary.string

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType

open class CommonPhoneStrings: JObject {
    fileprivate static let instance: CommonPhoneStrings! = CommonPhoneStrings()
    public var UP: String! = nil
    public var DOWN: String! = nil
    public var LEFT: String! = nil
    public var RIGHT: String! = nil
    public var ZERO: String! = nil
    public var ONE: String! = nil
    public var TWO: String! = nil
    public var THREE: String! = nil
    public var FOUR: String! = nil
    public var FIVE: String! = nil
    public var SIX: String! = nil
    public var SEVEN: String! = nil
    public var EIGHT: String! = nil
    public var NINE: String! = nil
    public var POUND: String! = nil
    public var STAR: String! = nil
    public var FIRE: String! = nil

    private func initFields() {
    self.UP = "UP"
    self.DOWN = "DOWN"
    self.LEFT = "LEFT"
    self.RIGHT = "RIGHT"
    self.ZERO = "0"
    self.ONE = "1"
    self.TWO = "2"
    self.THREE = "3"
    self.FOUR = "4"
    self.FIVE = "5"
    self.SIX = "6"
    self.SEVEN = "7"
    self.EIGHT = "8"
    self.NINE = "9"
    self.POUND = "#"
    self.STAR = "*"
    self.FIRE = "FIRE"
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> CommonPhoneStrings! {
        return CommonPhoneStrings.instance
    }
}

