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
// package org.allbinary.game.input

import J2SEForSwiftLibrary
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.media.audio.ErrorSound
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory
// import org.allbinary.media.audio.SelectSound

open class TextNotificationUtil: JObject {
    fileprivate static let instance: TextNotificationUtil! = TextNotificationUtil()
    fileprivate var TWO: Int32! = nil
    fileprivate var FALSE: Bool! = nil
    fileprivate var gameNotificationEventHandler: GameNotificationEventHandler! = nil

    private func initFields() {
    self.TWO = SmallIntegerSingletonFactory.getInstance().getAt(2)
    self.FALSE = BooleanFactory.getInstance().FALSE
    self.gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> TextNotificationUtil! {
        return TextNotificationUtil.instance
    }
    

    open func fireError(_ message: String!) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        self.fire(message)
    }
    

    open func fireNew(_ message: String!) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        self.fire(message)
    }
    

    open func fireSuccess(_ message: String!) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
        self.fire(message)
    }
    

    open func fire(_ message: String!) {
        let gameNotificationEvent: GameNotificationEvent! = GameNotificationEvent(self, message, self.TWO, BasicColorFactory.getInstance().RED, self.FALSE)
        self.gameNotificationEventHandler.fireEvent(gameNotificationEvent)
    }
}

