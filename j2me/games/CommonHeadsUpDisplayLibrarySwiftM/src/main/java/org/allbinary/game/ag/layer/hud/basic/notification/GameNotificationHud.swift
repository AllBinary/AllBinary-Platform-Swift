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
// package org.allbinary.game.ag.layer.hud.basic.notification

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.game.layer.hud.event.GameNotificationListenerInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

open class GameNotificationHud: BasicHud, GameNotificationListenerInterface {
    public static let NULL_GAME_NOTIFICATION: GameNotificationHud! = GameNotificationHud(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED)
    fileprivate var METHOD_NAME: String! = nil
    fileprivate var lastGameNotificationEvent: GameNotificationEvent! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.METHOD_NAME = "onGameNotificationEvent"
    self.lastGameNotificationEvent = GameNotification.NULL_GAME_NOTIFICATION_EVENT
    }
    

    public override init(_ location: Int32, _ direction: Int32, _ bufferZone: Int32, _ basicColor: BasicColor!) {
        super.init(location, direction, bufferZone, basicColor)
        self.initFields()
    }
    

    open override func onEvent(_ eventObject: AllBinaryEventObject!) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    }
    

    open func onGameNotificationEvent(_ gameNotificationEvent: GameNotificationEvent!) {
        if (self.lastGameNotificationEvent !== gameNotificationEvent) {
            self.lastGameNotificationEvent = gameNotificationEvent
            self.logUtil.putF(gameNotificationEvent.getString(), self, self.METHOD_NAME)
        }
        self.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent())
    }
    

    open func add(_ string: String!, _ seconds: Int32!, _ basicColor: BasicColor!, _ permanent: Bool!) {
    }
    

    open func processTick() {
    }
    

    open func paint(_ graphics: Graphics!) {
    }
    

    open func clear() {
    }
}

