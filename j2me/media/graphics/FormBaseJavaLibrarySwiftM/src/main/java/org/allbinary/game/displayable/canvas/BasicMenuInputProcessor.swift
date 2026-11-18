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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class BasicMenuInputProcessor: PlayerGameInput, BaseMotionGestureEventListener {
    public var motionGestureEventList: BasicArrayList! = nil
    fileprivate var canvas: Canvas! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.motionGestureEventList = BasicArrayListD()
    self.canvas = NullCanvas.NULL_CANVAS
    }
    

    public init(_ gameKeyEventList: BasicArrayList!, _ playerInputId: Int32, _ gameCanvas: Canvas!) {
        super.init(gameKeyEventList, BasicArrayListD(), playerInputId)
        self.initFields()
        self.canvas = gameCanvas
    }
    

    open func onMotionGestureEvent(_ motionGestureEvent: MotionGestureEvent!) {
        self.motionGestureEventList.add(motionGestureEvent)
    }
    

    open func onScrolledMotionGestureEvent(_ motionGestureEvent: MotionGestureEvent!) {
    }
    

    fileprivate func setCanvas(_ canvas: MyCanvas!) {
        self.canvas = canvas
    }
    

    @discardableResult open func getCanvas() -> MyCanvas! {
        return (self.canvas as! MyCanvas)
    }
    

    @discardableResult open func processInputList() -> Int32 {
        return -1
    }
}

