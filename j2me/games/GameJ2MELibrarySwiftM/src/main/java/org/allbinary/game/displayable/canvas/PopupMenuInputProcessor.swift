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
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.RectangleCollisionUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

open class PopupMenuInputProcessor: BasicMenuInputProcessor {
    fileprivate var rectangleCollisionUtil: RectangleCollisionUtil! = nil
    fileprivate var CLICK_DELAY: Int32 = 0
    fileprivate var clickTimeHelper: TimeDelayHelper! = nil
    fileprivate var rectangle: Rectangle! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    self.CLICK_DELAY = 120
    self.clickTimeHelper = TimeDelayHelper(self.CLICK_DELAY)
    
    }
    

    public init(_ gameKeyEventList: BasicArrayList!, _ playerInputId: Int32, _ gameCanvas: MyCanvas!, _ rectangle: Rectangle!) {
        super.init(gameKeyEventList, playerInputId, gameCanvas)
        self.initFields()
        self.rectangle = rectangle
    }
    

    open func `init`(_ rectangle: Rectangle!) {
        self.rectangle = rectangle
    }
    

    @discardableResult open func processInput(_ key: Int32) -> Int32 {
        if (key == Canvas.KEY_STAR) {
            let gameCanvas: AllBinaryGameCanvas! = (self.getCanvas() as! AllBinaryGameCanvas)
            gameCanvas.toggleMenu()
            return 1
        }
        return 0
    }
    

    @discardableResult open override func processInputList() -> Int32 {
        do {
            let motionInputsIndex: Int32 = self.processMotionInputs()
            let list: BasicArrayList! = self.getGameKeyEventList()
            let size: Int32 = list.size()
            var key: Int32 = 0
            var gameKeyEvent: GameKeyEvent! = nil
            do {
                var index: Int32 = 0
                while (index < size) {
                    defer { index &+= 1 }
                gameKeyEvent = (list.objectArray[index] as! GameKeyEvent)
                if (gameKeyEvent != nil) {
                    key = gameKeyEvent.getKey()
                    if (self.processInput(key) == 1) {
                        break
                    }
                }
                }
            }
            self.clear()
            if (size > 0 || motionInputsIndex >= 0) {
                return 1
            } else {
                return -1
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func processMotionInputs() -> Int32 {
        let lastIndex: Int32 = self.motionGestureEventList.size() &- 1
        if (lastIndex >= 0) {
            let motionGestureEvent: MotionGestureEvent! = (self.motionGestureEventList.objectArray[lastIndex] as! MotionGestureEvent)
            self.processMotionInput(motionGestureEvent)
        }
        self.motionGestureEventList.clear()
        return lastIndex
    }
    

    open func processMotionInput(_ motionGestureEvent: MotionGestureEvent!) {
        if (motionGestureEvent == nil) {
            self.logUtil.putF("Exception: Bug", self, self.gameInputStrings.PROCESS_MOTION_INPUT)
            return
        }
        let touchMotionGestureFactory: TouchMotionGestureFactory! = TouchMotionGestureFactory.getInstance()
        let motionGestureInput: MotionGestureInput! = motionGestureEvent.getMotionGesture()
        if (motionGestureInput === touchMotionGestureFactory.RELEASED) {
            let point: GPoint! = motionGestureEvent.getCurrentPoint()
            let rectPoint: GPoint! = self.rectangle.getPoint()
            if (self.rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), self.rectangle.getMaxX() &+ 20, self.rectangle.getMaxY(), point.getX(), point.getY())) {
                if (self.clickTimeHelper.isTimeTNT()) {
                    let gameCanvas: AllBinaryGameCanvas! = (self.getCanvas() as! AllBinaryGameCanvas)
                    gameCanvas.toggleMenu()
                }
            }
        }
    }
}

