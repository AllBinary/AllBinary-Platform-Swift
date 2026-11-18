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
// package org.allbinary.input.gyro

import J2SEForSwiftLibrary
// import org.allbinary.game.input.InputFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.logic.NullUtil

open class OrientationMotionGestureFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var LEFT: MotionGestureInput! = nil
    public var RIGHT: MotionGestureInput! = nil
    public var UP: MotionGestureInput! = nil
    public var DOWN: MotionGestureInput! = nil
    public var ROLL_LEFT: MotionGestureInput! = nil
    public var ROLL_RIGHT: MotionGestureInput! = nil

    private func initFields() {
    
    
    
    
    
    
    }
    

    @discardableResult open class func getInstance() -> OrientationMotionGestureFactory! {
        if (OrientationMotionGestureFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            OrientationMotionGestureFactory.instance = OrientationMotionGestureFactory()
        }
        return (OrientationMotionGestureFactory.instance as! OrientationMotionGestureFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let MAX: Int32 = InputFactory.getInstance().MAX
        self.LEFT = MotionGestureInput(MAX &- 20, "Left Orient")
        self.RIGHT = MotionGestureInput(MAX &- 21, "Right Orient")
        self.UP = MotionGestureInput(MAX &- 22, "Up Orient")
        self.DOWN = MotionGestureInput(MAX &- 23, "Down Orient")
        self.ROLL_LEFT = MotionGestureInput(MAX &- 24, "Roll Left")
        self.ROLL_RIGHT = MotionGestureInput(MAX &- 25, "Roll Right")
    }
}

