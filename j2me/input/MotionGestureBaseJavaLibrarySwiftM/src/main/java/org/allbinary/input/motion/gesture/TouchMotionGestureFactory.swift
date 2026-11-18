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

open class TouchMotionGestureFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var LEFT: MotionGestureInput! = nil
    public var RIGHT: MotionGestureInput! = nil
    public var UP: MotionGestureInput! = nil
    public var DOWN: MotionGestureInput! = nil
    public var PRESSED: MotionGestureInput! = nil
    public var RELEASED: MotionGestureInput! = nil
    public var DIAGONAL_DOWN_RIGHT: MotionGestureInput! = nil
    public var DIAGONAL_DOWN_LEFT: MotionGestureInput! = nil
    public var DIAGONAL_UP_RIGHT: MotionGestureInput! = nil
    public var DIAGONAL_UP_LEFT: MotionGestureInput! = nil
    public var SCROLL_UP: MotionGestureInput! = nil
    public var SCROLL_DOWN: MotionGestureInput! = nil
    public var NO_MOTION: MotionGestureInput! = nil
    public var LAST_MOTION: MotionGestureInput! = nil

    private func initFields() {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    

    @discardableResult open class func getInstance() -> TouchMotionGestureFactory! {
        if (TouchMotionGestureFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            TouchMotionGestureFactory.instance = TouchMotionGestureFactory()
        }
        return (TouchMotionGestureFactory.instance as! TouchMotionGestureFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
        let MAX: Int32 = InputFactory.getInstance().MAX
        self.LEFT = MotionGestureInput(MAX &- 3, "Left Touch")
        self.RIGHT = MotionGestureInput(MAX &- 4, "Right Touch")
        self.UP = MotionGestureInput(MAX &- 5, "Up Touch")
        self.DOWN = MotionGestureInput(MAX &- 6, "Down Touch")
        self.PRESSED = MotionGestureInput(MAX &- 7, "Screen Press")
        self.RELEASED = MotionGestureInput(MAX &- 8, "Released")
        self.DIAGONAL_DOWN_RIGHT = MotionGestureInput(MAX &- 9, "Diagonal Dn R")
        self.DIAGONAL_DOWN_LEFT = MotionGestureInput(MAX &- 10, "Diagonal Dn L")
        self.DIAGONAL_UP_RIGHT = MotionGestureInput(MAX &- 11, "Diagonal Up R")
        self.DIAGONAL_UP_LEFT = MotionGestureInput(MAX &- 12, "Diagonal Up L")
        self.SCROLL_UP = MotionGestureInput(MAX &- 13, "Scroll Up")
        self.SCROLL_DOWN = MotionGestureInput(MAX &- 14, "Scroll Down")
        self.NO_MOTION = MotionGestureInput(MAX &- 2, "No Motion")
        self.LAST_MOTION = MotionGestureInput(MAX &- 19, "Last Motion")
    }
}

