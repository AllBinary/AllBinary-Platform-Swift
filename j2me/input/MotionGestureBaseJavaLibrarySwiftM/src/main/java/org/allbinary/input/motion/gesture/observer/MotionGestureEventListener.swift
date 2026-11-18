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
// package org.allbinary.input.motion.gesture.observer

import J2SEForSwiftLibrary

public protocol MotionGestureEventListener: AnyObject, BaseMotionGestureEventListener {
    func onPressedMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onUpMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onDownMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onLeftMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onRightMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onDiagonalDownRightMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onDiagonalDownLeftMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onDiagonalUpRightMotionGestureEvent(_ ev: MotionGestureEvent!)
    func onDiagonalUpLeftMotionGestureEvent(_ ev: MotionGestureEvent!)
    func released(_ ev: MotionGestureEvent!)
}


