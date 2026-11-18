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
// import org.allbinary.string.CommonPhoneStrings
// import org.allbinary.string.CommonSeps

open class DirectionFactory: JObject {
    fileprivate static let instance: DirectionFactory! = DirectionFactory()
    public var NAME: String! = nil
    public var LEFT: Direction! = nil
    public var RIGHT: Direction! = nil
    public var DOWN: Direction! = nil
    public var UP: Direction! = nil
    public var UP_LEFT: Direction! = nil
    public var UP_RIGHT: Direction! = nil
    public var DOWN_LEFT: Direction! = nil
    public var DOWN_RIGHT: Direction! = nil
    public var NOT_BORDERED_WITH: Direction! = nil
    public var NO_DIRECTION: Direction! = nil
    public var TOP: Direction! = nil
    public var BOTTOM: Direction! = nil
    public var ALL_DIRECTION: Direction! = nil

    private func initFields() {
    self.NAME = "DIRECTION"
    self.LEFT = Direction(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1)
    self.RIGHT = Direction(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0)
    self.DOWN = Direction(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0)
    self.UP = Direction(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0)
    
    
    
    
    self.NOT_BORDERED_WITH = Direction("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)
    self.NO_DIRECTION = Direction("NO_DIRECTION", "NO_DIRECTION", 9, 0)
    self.TOP = Direction("TOP", "TOP", 10, 0)
    self.BOTTOM = Direction("BOTTOM", "BOTTOM", 11, 0)
    self.ALL_DIRECTION = Direction("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)
    }
    

    @discardableResult open class func getInstance() -> DirectionFactory! {
        return DirectionFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let stringBuffer: StringMaker! = StringMaker()
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        self.UP_LEFT = Direction("UP LEFT", stringBuffer.append(self.UP.getOtherName()).append(commonSeps.SPACE).append(self.LEFT.getOtherName()).toString(), 4, 0)
        stringBuffer.delete(0, stringBuffer.length())
        self.UP_RIGHT = Direction("UP RIGHT", stringBuffer.append(self.UP.getOtherName()).append(commonSeps.SPACE).append(self.RIGHT.getOtherName()).toString(), 5, 0)
        stringBuffer.delete(0, stringBuffer.length())
        self.DOWN_LEFT = Direction("DOWN LEFT", stringBuffer.append(self.DOWN.getOtherName()).append(commonSeps.SPACE).append(self.LEFT.getOtherName()).toString(), 6, 0)
        stringBuffer.delete(0, stringBuffer.length())
        self.DOWN_RIGHT = Direction("DOWN RIGHT", stringBuffer.append(self.DOWN.getOtherName()).append(commonSeps.SPACE).append(self.RIGHT.getOtherName()).toString(), 7, 0)
    }
}

