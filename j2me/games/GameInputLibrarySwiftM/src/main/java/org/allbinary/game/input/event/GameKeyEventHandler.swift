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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.string.CommonStrings

open class GameKeyEventHandler: JObject {
    fileprivate static let instance: GameKeyEventHandler! = GameKeyEventHandler()
    public var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var pressGameKeyEventHandler: PressGameKeyEventHandler! = nil
    fileprivate var upGameKeyEventHandler: UpGameKeyEventHandler! = nil
    fileprivate var downGameKeyEventHandler: DownGameKeyEventHandler! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance()
    self.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    self.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> GameKeyEventHandler! {
        return GameKeyEventHandler.instance
    }
    

    open func removeAllListeners() {
        self.pressGameKeyEventHandler.removeAllListeners()
        self.upGameKeyEventHandler.removeAllListeners()
        self.downGameKeyEventHandler.removeAllListeners()
    }
    

    open func addListenerForPlayer(_ eventListenerInterface: EventListenerInterface!, _ playerInputId: Int32) {
        self.logUtil.putF(jstr(eventListenerInterface), self, self.commonStrings.ADD_LISTENER)
        self.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        self.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
        self.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface)
    }
    

    open func addListener(_ eventListenerInterface: EventListenerInterface!) {
        self.logUtil.putF(jstr(eventListenerInterface), self, self.commonStrings.ADD_LISTENER)
        self.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        self.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
        self.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface)
    }
    

    open func removeListener(_ eventListenerInterface: EventListenerInterface!) {
        self.logUtil.putF(jstr(eventListenerInterface), self, self.commonStrings.REMOVE_LISTENER)
        self.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        self.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
        self.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface)
    }
}

