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

open class UpGameKeyEventHandler: UpGameKeyEventHandlerBase {
    fileprivate static let instance: UpGameKeyEventHandler! = UpGameKeyEventHandler()
    fileprivate static let instanceArray: JArray<UpGameKeyEventHandlerBase?>! = JArray<UpGameKeyEventHandlerBase?>([UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase()])
    fileprivate var playerInputIdFactory: LocalPlayerInputIdFactory! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    }
    

    @discardableResult open class func getInstance() -> UpGameKeyEventHandler! {
        return UpGameKeyEventHandler.instance
    }
    

    @discardableResult open func getInstanceForDevice(_ deviceId: Int32) -> UpGameKeyEventHandlerBase! {
        let playerInputId: Int32 = self.playerInputIdFactory.getPlayerForDevice(deviceId)
        return UpGameKeyEventHandler.instanceArray[playerInputId]
    }
    

    @discardableResult open func getInstanceForPlayer(_ playerInputId: Int32) -> UpGameKeyEventHandlerBase! {
        return UpGameKeyEventHandler.instanceArray[playerInputId]
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func removeAllListeners() {
        super.removeAllListeners()
        do {
            var index: Int32 = UpGameKeyEventHandler.instanceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            UpGameKeyEventHandler.instanceArray[index]!.removeAllListeners()
            }
        }
    }
    

    open override func removeListenerSingleThreaded(_ eventListenerInterface: EventListenerInterface!) {
        super.removeListenerSingleThreaded(eventListenerInterface)
        do {
            var index: Int32 = UpGameKeyEventHandler.instanceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            UpGameKeyEventHandler.instanceArray[index]!.removeListenerSingleThreaded(eventListenerInterface)
            }
        }
    }
    

    open override func removeListener(_ eventListenerInterface: EventListenerInterface!) {
        super.removeListener(eventListenerInterface)
        do {
            var index: Int32 = UpGameKeyEventHandler.instanceArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            UpGameKeyEventHandler.instanceArray[index]!.removeListener(eventListenerInterface)
            }
        }
    }
}

