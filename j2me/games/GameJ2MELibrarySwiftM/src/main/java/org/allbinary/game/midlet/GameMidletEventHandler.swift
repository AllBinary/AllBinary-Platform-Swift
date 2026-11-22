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
// package org.allbinary.game.midlet

import J2SEForSwiftLibrary
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

open class GameMidletEventHandler: BasicEventHandler {
    fileprivate static let gameKeyEventHandler: GameMidletEventHandler! = GameMidletEventHandler()
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> GameMidletEventHandler! {
        return GameMidletEventHandler.gameKeyEventHandler
    }
    

    open override func process(_ eventObject: AllBinaryEventObject!, _ eventListenerInterface: EventListenerInterface!) {
        let gameMidletEventListener: GameMidletEventListener! = (eventListenerInterface as Any as? GameMidletEventListener)
        gameMidletEventListener.onGameEnd(eventObject)
    }
}

