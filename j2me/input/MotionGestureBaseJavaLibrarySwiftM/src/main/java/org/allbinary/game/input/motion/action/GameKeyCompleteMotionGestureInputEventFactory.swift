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
// package org.allbinary.game.input.motion.action

import J2SEForSwiftLibrary
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GameKeyCompleteMotionGestureInputEventFactory: JObject {
    fileprivate static let SINGLETON: GameKeyCompleteMotionGestureInputEventFactory! = GameKeyCompleteMotionGestureInputEventFactory()
    public var logUtil: LogUtil! = nil
    fileprivate var eventList: BasicArrayList! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.eventList = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameKeyCompleteMotionGestureInputEventFactory! {
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON
    }
    

    open func add(_ gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent!) {
        self.eventList.add(gameKeyCompleteMotionGestureInputEvent)
    }
    

    open func updateAll() {
        self.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(self.eventList.size()).toString(), self, "updateAll")
        do {
            var index: Int32 = self.eventList.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            let gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent! = (self.eventList.objectArray[index] as! GameKeyCompleteMotionGestureInputEvent)
            gameKeyCompleteMotionGestureInputEvent.update()
            }
        }
    }
}

