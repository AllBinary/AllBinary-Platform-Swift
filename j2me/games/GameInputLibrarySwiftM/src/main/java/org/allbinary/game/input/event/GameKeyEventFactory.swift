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
// package org.allbinary.game.input.event

import J2SEForSwiftLibrary
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil

open class GameKeyEventFactory: JObject {
    fileprivate static var instance: JObject! = NullUtil.getInstance().NULL_OBJECT
    public var logUtil: LogUtil! = nil
    public var TOUCH_BUTTON_SOURCE_ID: Int32 = 0
    public var MOTION_GESTURE_SOURCE_ID: Int32 = 0
    fileprivate var MAX_SOURCES: Int32 = 0
    fileprivate var ARRAY: JArray<JArray<GameKeyEvent?>?>! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.TOUCH_BUTTON_SOURCE_ID = 2
    self.MOTION_GESTURE_SOURCE_ID = 3
    self.MAX_SOURCES = 4
    self.ARRAY = JArray<JArray<GameKeyEvent?>?>(self.MAX_SOURCES, factory: { JArray<GameKeyEvent?>(InputFactory.getInstance().MAX, nil) })
    }
    

    @discardableResult open class func getInstance() -> GameKeyEventFactory! {
        if (GameKeyEventFactory.instance === NullUtil.getInstance().NULL_OBJECT) {
            GameKeyEventFactory.instance = GameKeyEventFactory()
        }
        return (GameKeyEventFactory.instance as! GameKeyEventFactory)
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func `init`() {
        let nullUtil: NullUtil! = NullUtil.getInstance()
        let size: Int32 = InputFactory.getInstance().MAX
        do {
            var index: Int32 = self.MAX_SOURCES
            while (jPreDecrement(&index) >= 0) {
            do {
                var index2: Int32 = size
                while (jPreDecrement(&index2) >= 0) {
                self.ARRAY[index]![index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2)
                }
            }
            }
        }
    }
    

    @discardableResult open func getInstanceForKey(_ anyType: GameKeyEventSourceInterface!, _ key: Int32) -> GameKeyEvent! {
        let gameKeyEvent: GameKeyEvent! = self.ARRAY[anyType.getSourceId()]![key]
        return gameKeyEvent
    }
    

    @discardableResult open func getInstanceForInput(_ anyType: GameKeyEventSourceInterface!, _ input: Input!) -> GameKeyEvent! {
        let gameKeyEvent: GameKeyEvent! = self.ARRAY[anyType.getSourceId()]![input.getId()]
        return gameKeyEvent
    }
}

