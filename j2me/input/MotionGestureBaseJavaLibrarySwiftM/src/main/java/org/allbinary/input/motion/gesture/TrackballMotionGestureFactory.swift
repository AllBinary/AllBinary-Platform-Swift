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
// package org.allbinary.input.motion.gesture

import J2SEForSwiftLibrary
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil

open class TrackballMotionGestureFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var LEFT: MotionGestureInput! = nil
    public var RIGHT: MotionGestureInput! = nil
    public var UP: MotionGestureInput! = nil
    public var DOWN: MotionGestureInput! = nil

    private func initFields() {
    
    
    
    
    }
    

    @discardableResult open class func getInstance() -> TrackballMotionGestureFactory! {
        if (TrackballMotionGestureFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            TrackballMotionGestureFactory.instance = TrackballMotionGestureFactory()
        }
        return (TrackballMotionGestureFactory.instance as! TrackballMotionGestureFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let MAX: Int32 = InputFactory.getInstance().MAX
        self.LEFT = MotionGestureInput(MAX &- 26, "L Trackball")
        self.RIGHT = MotionGestureInput(MAX &- 27, "R Trackball")
        self.UP = MotionGestureInput(MAX &- 28, "Up Trackball")
        self.DOWN = MotionGestureInput(MAX &- 29, "D Trackball")
    }
}

