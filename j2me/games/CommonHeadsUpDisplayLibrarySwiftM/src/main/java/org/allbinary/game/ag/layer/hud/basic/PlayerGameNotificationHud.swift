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
// package org.allbinary.game.ag.layer.hud.basic

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.Processor
// import org.allbinary.game.GameAdState
// import org.allbinary.game.ag.layer.hud.basic.notification.GameNotification
// import org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.graphics.CustomGPoint
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.CircularIndexUtil

open class PlayerGameNotificationHud: GameNotificationHud {
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil
    fileprivate var EMPTY_STRING: String! = nil
    fileprivate var displayInfo: DisplayInfoSingleton! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var circularIndexUtil: CircularIndexUtil! = nil
    fileprivate var gameNotification: GameNotification! = nil
    fileprivate var permanentGameNotification: GameNotification! = nil
    fileprivate var setAndRemoveProcessor: Processor! = nil
    fileprivate var nextUnremoveableProcessor: Processor! = nil
    fileprivate var processor: Processor! = nil
    fileprivate var PERMANENT_GAME_NOTIFICATION: String! = nil
    fileprivate var lastString: String! = nil
    fileprivate var string: String! = nil
    fileprivate var point: CustomGPoint! = nil
    fileprivate var width: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    self.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    self.displayInfo = DisplayInfoSingleton.getInstance()
    self.timeDelayHelper = TimeDelayHelper(0)
    
    self.gameNotification = GameNotification()
    self.permanentGameNotification = GameNotification()
    self.setAndRemoveProcessor = SetAndRemoveProcessor(self)
    self.nextUnremoveableProcessor = NextUnremoveableProcessor(self)
    self.processor = Processor.getInstance()
    self.PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
    self.lastString = StringUtil.getInstance().EMPTY_STRING
    self.string = self.EMPTY_STRING
    self.point = CustomGPoint.NULL_CUSTOM_POINT
    self.width = 0
    }
    

    public override init(_ location: Int32, _ direction: Int32, _ bufferZone: Int32, _ basicColor: BasicColor!) {
        super.init(location, direction, bufferZone, basicColor)
        self.initFields()
        self.circularIndexUtil = CircularIndexUtil.createInstance(0)
        let gameNotificationEventHandler: GameNotificationEventHandler! = GameNotificationEventHandler.getInstance()
        gameNotificationEventHandler.removeAllListeners()
        gameNotificationEventHandler.addListenerInterface(self)
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        do {
            super.updateMeasurement(graphics)
            let font: Font! = graphics.getFont()
            self.width = font.stringWidth(self.string)
            self.processor.process()
            self.processor = Processor.getInstance()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open override func getPoint(_ x: Int32, _ y: Int32) -> GPoint! {
        self.point = CustomGPoint.getInstance3(0, 0)
        self.point.setX(x)
        self.point.setY(y)
        return self.point
    }
    

    open override func add(_ string: String!, _ seconds: Int32!, _ basicColor: BasicColor!, _ permanent: Bool!) {
        if (permanent.booleanValue()) {
            if (self.lastString != string) {
                self.lastString = string
                self.logUtil.putF(StringMaker().append(self.PERMANENT_GAME_NOTIFICATION).append(string).toString(), self, self.commonStrings.ADD)
            }
            self.permanentGameNotification.add(string, seconds, basicColor)
            self.circularIndexUtil.setSize(self.permanentGameNotification.getSize())
        } else {
            self.gameNotification.add(string, seconds, basicColor)
        }
    }
    

    open override func processTick() {
        if (self.timeDelayHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
            let gameAdState: GameAdState! = GameAdStateFactory.getInstance().getCurrentInstance()
            if (gameAdState.isShowingAtLocation(self.getLocation())) {
                self.offsetY = -54
            } else {
                self.offsetY = 0
            }
            if (self.gameNotification.getSize() > 0) {
                self.setAndRemove()
            } else if (self.permanentGameNotification.getSize() > 0) {
                self.setNextUnremoveable()
            } else {
                self.string = self.EMPTY_STRING
            }
        }
    }
    

    fileprivate func setAndRemove() {
        self.string = jUnboxString(self.gameNotification.stringList.removeAt(0))
        self.processor = self.setAndRemoveProcessor
    }
    

    open func setAndRemoveProcess() {
        self.setX((self.displayInfo.getLastWidth() &- self.width) >> 1)
        self.point.setX(self.getX())
        self.point.setY(self.getY())
        let time: Int32! = jUnboxValue(self.gameNotification.timeList.removeAt(0), Int32.self)
        var iTime: Int32 = time.intValue() &* 1000
        if (iTime == 0) {
            iTime = 500
        }
        self.timeDelayHelper.delay = iTime
        self.setBasicColorP((self.gameNotification.colorList.removeAt(0) as! BasicColor))
    }
    

    fileprivate func setNextUnremoveable() {
        let index: Int32 = self.circularIndexUtil.getIndex()
        self.string = jUnboxString(self.permanentGameNotification.stringList.objectArray[index])
        self.processor = self.nextUnremoveableProcessor
    }
    

    open func setNextUnremoveableProcess() {
        let index: Int32 = self.circularIndexUtil.getIndex()
        self.setX((self.displayInfo.getLastWidth() &- self.width) >> 1)
        self.point.setX(self.getX())
        self.point.setY(self.getY())
        let time: Int32! = jUnboxValue(self.permanentGameNotification.timeList.objectArray[index], Int32.self)
        self.timeDelayHelper.delay = time.intValue() &* 1000
        self.setBasicColorP((self.permanentGameNotification.colorList.objectArray[index] as! BasicColor))
        self.circularIndexUtil.next()
    }
    

    open override func clear() {
        self.gameNotification.clear()
        self.permanentGameNotification.clear()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        super.paintString(graphics, self.string)
    }
}

