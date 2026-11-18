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
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class NoGameNotificationHudSingleton: JObject {
    fileprivate static let instance: NoGameNotificationHudSingleton! = NoGameNotificationHudSingleton()
    public var logUtil: LogUtil! = nil
    fileprivate var gameNotificationHud: GameNotificationHud! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.gameNotificationHud = GameNotificationHud.NULL_GAME_NOTIFICATION
    }
    

    @discardableResult open class func getInstance() -> NoGameNotificationHudSingleton! {
        return NoGameNotificationHudSingleton.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        do {
            _ = BasicHudFactory.getInstance()
            self.gameNotificationHud = NoGameGameNotificationHud()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getGameNotificationHud() -> GameNotificationHud! {
        return self.gameNotificationHud
    }
}

