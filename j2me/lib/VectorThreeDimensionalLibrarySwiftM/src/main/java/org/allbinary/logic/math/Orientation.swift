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
// package org.allbinary.logic.math

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

open class Orientation: JObject {
    public static var NONE: Orientation! = Orientation(0, 0, 0)
    fileprivate static var SINGLETON: Orientation! = Orientation(0, 0, 0)
    public var yaw: BasicDecimal! = nil
    public var pitch: BasicDecimal! = nil
    public var roll: BasicDecimal! = nil

    private func initFields() {
    self.yaw = BasicDecimal(0)
    self.pitch = BasicDecimal(0)
    self.roll = BasicDecimal(0)
    }
    

    @discardableResult open class func getInstance(_ yaw: Int32, _ pitch: Int32, _ roll: Int32) -> Orientation! {
        Orientation.SINGLETON.yaw.setint(yaw)
        Orientation.SINGLETON.pitch.setint(pitch)
        Orientation.SINGLETON.roll.setint(roll)
        return Orientation.SINGLETON
    }
    

    public init(_ yaw: Int32, _ pitch: Int32, _ roll: Int32) {
        super.init()
        self.initFields()
        self.yaw.setint(yaw)
        self.pitch.setint(pitch)
        self.roll.setint(roll)
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Y: ")
        stringBuffer.append(self.yaw.toString())
        stringBuffer.append(" P: ")
        stringBuffer.append(self.pitch.toString())
        stringBuffer.append(" R: ")
        stringBuffer.append(self.roll.toString())
        return stringBuffer.toString()
    }
}

