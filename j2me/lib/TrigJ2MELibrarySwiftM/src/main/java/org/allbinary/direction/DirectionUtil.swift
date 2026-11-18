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
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory

open class DirectionUtil: JObject {
    fileprivate static let instance: DirectionUtil! = DirectionUtil()
    fileprivate var directionArray: JArray<Angle?>! = nil
    fileprivate var directionArray2: JArray<Angle?>! = nil

    private func initFields() {
    self.directionArray = JArray<Angle?>(10, nil)
    self.directionArray2 = JArray<Angle?>(10, nil)
    }
    

    @discardableResult open class func getInstance() -> DirectionUtil! {
        return DirectionUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        let angleFactory: AngleFactory! = AngleFactory.getInstance()
        let directionFactory: DirectionFactory! = DirectionFactory.getInstance()
        self.directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        self.directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        self.directionArray[directionFactory.UP.getValue()] = angleFactory.UP
        self.directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN
        self.directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT
        self.directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT
        self.directionArray2[directionFactory.UP.getValue()] = angleFactory.UP
        self.directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN
    }
    

    @discardableResult open func getAngle(_ direction: Direction!) -> Angle! {
        return self.directionArray2[direction.getValue()]
    }
    

    @discardableResult open func getFrameAngle(_ direction: Direction!) -> Angle! {
        return self.directionArray[direction.getValue()]
    }
}

