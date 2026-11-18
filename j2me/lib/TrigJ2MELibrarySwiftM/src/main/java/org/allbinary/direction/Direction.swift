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
// package org.allbinary.direction

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

open class Direction: JObject {
    fileprivate static var directionArray: JArray<Direction?>! = JArray<Direction?>(13, nil)
    fileprivate var name: String! = nil
    fileprivate var otherName: String! = nil
    fileprivate var value: Int32 = 0
    fileprivate var frameFactor: Int32 = 0

    private func initFields() {
    
    
    
    
    }
    

    public init(_ name: String!, _ otherName: String!, _ value: Int32, _ frameFactor: Int32) {
        super.init()
        self.initFields()
        self.name = name
        self.otherName = otherName
        self.value = value
        self.frameFactor = frameFactor
        Direction.directionArray[value] = self
    }
    

    @discardableResult open class func getInstance(_ direction: Int32) -> Direction! {
        return Direction.directionArray[direction]
    }
    

    @discardableResult open func getValue() -> Int32 {
        return self.value
    }
    

    @discardableResult open func getFrameFactor() -> Int32 {
        return self.frameFactor
    }
    

    @discardableResult open func getOtherName() -> String! {
        return self.otherName
    }
    

    @discardableResult open func getName() -> String! {
        return self.name
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        stringBuffer.append("Direction: ")
        stringBuffer.append(self.getName())
        stringBuffer.append(" Or: ")
        stringBuffer.append(self.getOtherName())
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(self.value)
        return stringBuffer.toString()
    }
}

