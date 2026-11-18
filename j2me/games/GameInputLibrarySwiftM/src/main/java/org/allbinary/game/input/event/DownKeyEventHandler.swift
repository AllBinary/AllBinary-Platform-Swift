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
// import org.allbinary.game.input.LocalPlayerInputIdFactory
// import org.allbinary.logic.util.event.EventListenerInterface

open class DownKeyEventHandler: DownKeyEventHandlerBase {
    fileprivate static let instance: DownKeyEventHandler! = DownKeyEventHandler()
    fileprivate static let instanceArray: JArray<DownKeyEventHandlerBase?>! = JArray<DownKeyEventHandlerBase?>([DownKeyEventHandlerBase(), DownKeyEventHandlerBase(), DownKeyEventHandlerBase(), DownKeyEventHandlerBase(), DownKeyEventHandlerBase(), DownKeyEventHandlerBase()])
    fileprivate var playerInputIdFactory: LocalPlayerInputIdFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    }
    

    @discardableResult open class func getInstance() -> DownKeyEventHandler! {
        return DownKeyEventHandler.instance
    }
    

    @discardableResult open func getInstanceForDevice(_ deviceId: Int32) -> DownKeyEventHandlerBase! {
        let playerInputId: Int32 = self.playerInputIdFactory.getPlayerForDevice(deviceId)
        return DownKeyEventHandler.instanceArray[playerInputId]
    }
    

    @discardableResult open func getInstanceForPlayer(_ playerInputId: Int32) -> DownKeyEventHandlerBase! {
        return DownKeyEventHandler.instanceArray[playerInputId]
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func removeAllListeners() {
        super.removeAllListeners()
        do {
            var index: Int32 = DownKeyEventHandler.instanceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            DownKeyEventHandler.instanceArray[index].removeAllListeners()
            }
        }
    }
    

    open override func removeListenerSingleThreaded(_ eventListenerInterface: EventListenerInterface!) {
        super.removeListenerSingleThreaded(eventListenerInterface)
        do {
            var index: Int32 = DownKeyEventHandler.instanceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            DownKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)
            }
        }
    }
    

    open override func removeListener(_ eventListenerInterface: EventListenerInterface!) {
        super.removeListener(eventListenerInterface)
        do {
            var index: Int32 = DownKeyEventHandler.instanceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            DownKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)
            }
        }
    }
}

