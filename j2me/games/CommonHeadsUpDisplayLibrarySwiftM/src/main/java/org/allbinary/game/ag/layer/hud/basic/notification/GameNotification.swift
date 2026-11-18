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
// import org.allbinary.game.layer.hud.event.GameNotificationEvent
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.java.bool.BooleanFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

open class GameNotification: JObject {
    public static let NULL_GAME_NOTIFICATION_EVENT: GameNotificationEvent! = GameNotificationEvent(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
    public var stringList: BasicArrayList! = nil
    public var timeList: BasicArrayList! = nil
    public var colorList: BasicArrayList! = nil

    private func initFields() {
    self.stringList = BasicArrayListD()
    self.timeList = BasicArrayListD()
    self.colorList = BasicArrayListD()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func add(_ string: String!, _ seconds: Int32!, _ basicColor: BasicColor!) {
        if (!self.stringList.contains(jBoxString(string))) {
            self.stringList.add(jBoxString(string))
            self.timeList.add(jBoxValue(seconds))
            self.colorList.add(basicColor)
        }
    }
    

    open func clear() {
        self.stringList.clear()
        self.timeList.clear()
        self.colorList.clear()
    }
    

    @discardableResult open func getSize() -> Int32 {
        return self.stringList.size()
    }
}

