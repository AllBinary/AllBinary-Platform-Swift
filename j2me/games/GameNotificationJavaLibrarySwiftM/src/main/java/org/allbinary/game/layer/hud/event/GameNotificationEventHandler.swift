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
// package org.allbinary.game.layer.hud.event

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.NullEventListener
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList

open class GameNotificationEventHandler: BasicEventHandler {
    fileprivate static let instance: GameNotificationEventHandler! = GameNotificationEventHandler()
    public var enabled: Bool = false

    // Each class has its own field initializers
    private func initFields() {
    self.enabled = true
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func removeAllListeners() {
        var eventListenerInterface: EventListenerInterface! = NullEventListener.NULL_EVENT_LISTENER
        let list: BasicArrayList! = self.eventListenerInterfaceList
        if (list.size() > 0) {
            eventListenerInterface = (list.objectArray[0] as! EventListenerInterface)
        }
        super.removeAllListeners()
        if (eventListenerInterface !== NullEventListener.NULL_EVENT_LISTENER) {
            self.addListenerInterface(eventListenerInterface)
        }
    }
    

    @discardableResult open class func getInstance() -> GameNotificationEventHandler! {
        return GameNotificationEventHandler.instance
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        if (!self.enabled) {
            return
        }
        let gameNotificationListenerInterface: GameNotificationListenerInterface! = (eventListenerInterface as! GameNotificationListenerInterface)
        gameNotificationListenerInterface.onGameNotificationEvent((eventObject as! GameNotificationEvent))
    }
}

