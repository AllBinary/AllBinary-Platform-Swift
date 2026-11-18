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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.math.RectangleCollisionUtil
// import org.allbinary.util.BasicArrayList

open class TouchButtonRecognizer: JObject {
    public var logUtil: LogUtil! = nil
    fileprivate var rectangleCollisionUtil: RectangleCollisionUtil! = nil
    public var upGameKeyEventHandler: UpGameKeyEventHandler! = nil
    fileprivate var downGameKeyEventHandler: DownGameKeyEventHandler! = nil
    fileprivate var lastPressedTouchButtonInput: TouchButtonInput! = nil
    public var currentlyPressedTouchButtonSingleton: CurrentlyPressedTouchButtonSingleton! = nil
    fileprivate var releaseHelper: ReleaseHelper! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    self.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    self.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    self.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
    self.currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance()
    self.releaseHelper = nil
    }
    

    public override init() {
        super.init()
        self.initFields()
        if (TouchScreenFactory.getInstance().isMultiTouch()) {
            self.releaseHelper = MultitouchReleaseHelper(self)
        } else {
            self.releaseHelper = ReleaseHelper(self)
        }
    }
    

    fileprivate func processRelease(_ touchButtonInput: TouchButtonInput!, _ deviceId: Int32) {
        self.releaseHelper.release(touchButtonInput, deviceId)
        let gameKeyEvent: GameKeyEvent! = touchButtonInput.getGameKeyEvent()
        self.upGameKeyEventHandler.fireEvent(gameKeyEvent)
        self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
        self.currentlyPressedTouchButtonSingleton.remove(touchButtonInput)
    }
    

    @discardableResult open func releaseTouchButtonInput(_ x: Int32, _ y: Int32, _ deviceId: Int32) -> Bool {
        var touchButtonInput: TouchButtonInput! = self.lastPressedTouchButtonInput
        if (self.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
            self.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE
            self.processRelease(touchButtonInput, deviceId)
            return true
        } else {
            let list: BasicArrayList! = TouchButtonFactory.getInstance().getList()
            var rectangle: Rectangle! = nil
            var point: GPoint! = nil
            var touchButton: TouchButton! = nil
            do {
                var index: Int32 = list.size() &- 1
                while (index >= 0) {
                    defer { index &-= 1 }
                touchButton = (list.objectArray[index] as! TouchButton)
                rectangle = touchButton.getRectangle()
                point = rectangle.getPoint()
                if (self.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                    touchButtonInput = touchButton.getTouchButtonInput()
                    self.processRelease(touchButtonInput, deviceId)
                    return true
                }
                }
            }
        }
        return false
    }
    

    @discardableResult open func pressTouchButtonInput(_ x: Int32, _ y: Int32, _ deviceId: Int32) -> Bool {
        let list: BasicArrayList! = TouchButtonFactory.getInstance().getList()
        var rectangle: Rectangle! = nil
        var point: GPoint! = nil
        var touchButton: TouchButton! = nil
        var touchButtonInput: TouchButtonInput! = nil
        var gameKeyEvent: GameKeyEvent! = nil
        do {
            var index: Int32 = list.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            touchButton = (list.objectArray[index] as! TouchButton)
            rectangle = touchButton.getRectangle()
            point = rectangle.getPoint()
            if (self.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                touchButtonInput = touchButton.getTouchButtonInput()
                if (!self.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
                    self.releaseHelper.release(touchButtonInput, deviceId)
                    self.lastPressedTouchButtonInput = touchButtonInput
                    self.currentlyPressedTouchButtonSingleton.add(touchButtonInput)
                    gameKeyEvent = touchButtonInput.getGameKeyEvent()
                    self.downGameKeyEventHandler.fireEvent(gameKeyEvent)
                    self.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                }
                return true
            }
            }
        }
        return false
    }
}

