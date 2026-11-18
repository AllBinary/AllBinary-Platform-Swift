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
// package org.allbinary.game.ag.layer.hud.basic.health

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.game.health.Health
// import org.allbinary.game.health.HealthListenerInterface
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.NoTimeDelayHelper
// import org.allbinary.time.TimeDelayHelper

open class HealthHudWidget: BasicHud, PaintableInterface, HealthListenerInterface {
    fileprivate var healthScale: Int32 = 0
    public var animationInterface: Animation! = nil
    public var healthInterface: Health! = nil
    public var max: Int32 = 0
    fileprivate var xArray: JArray<Int32>! = nil
    fileprivate var gameTickTimeDelayHelper: GameTickTimeDelayHelper! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var slowBeatTimeDelayHelper: TimeDelayHelper! = nil
    fileprivate var mediumBeatTimeDelayHelper: TimeDelayHelper! = nil
    fileprivate var fastBeatTimeDelayHelper: TimeDelayHelper! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    self.max = 0
    
    self.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    self.timeDelayHelper = NoTimeDelayHelper.SINGLETON
    self.slowBeatTimeDelayHelper = TimeDelayHelper(1280)
    self.mediumBeatTimeDelayHelper = TimeDelayHelper(640)
    self.fastBeatTimeDelayHelper = TimeDelayHelper(320)
    }
    

    public init(_ animationInterface: Animation!, _ healthInterface: Health!, _ location: Int32, _ direction: Int32) {
        super.init(location, direction, 2, BasicColorFactory.getInstance().WHITE)
        self.initFields()
        self.animationInterface = animationInterface
        self.healthInterface = healthInterface
        self.healthInterface.addListener(self)
        self.healthScale = (self.healthInterface.getMaxHealth() / 6) &+ 1
        self.onHealthChange()
        self.updateMaxWidth = healthInterface.getMaxHealth() &* 16
        self.updateMaxHeight = 16
        self.xArray = JArray<Int32>(30, 0)
        self.update()
    }
    

    fileprivate func update() {
        if (self.xArray != nil) {
            do {
                var index: Int32 = 0
                while (index < self.xArray.length) {
                    defer { index &+= 1 }
                self.xArray[index] = self.getX() &+ (index &* 16)
                }
            }
        }
    }
    

    open override func setX(_ x: Int32) {
        super.setX(x)
        self.update()
    }
    

    open func onHealthChange() {
        self.max = (self.healthInterface.getHealth() / self.healthScale)
        self.timeDelayHelper = NoTimeDelayHelper.SINGLETON
        if (self.max <= 1 && self.healthInterface.isAlive()) {
            self.max = 1
            if (self.healthScale &- self.healthInterface.getHealth() > (self.healthScale &* 2) / 3) {
                self.timeDelayHelper = self.slowBeatTimeDelayHelper
            } else if (self.healthScale &- self.healthInterface.getHealth() > self.healthScale / 3) {
                self.timeDelayHelper = self.mediumBeatTimeDelayHelper
            } else {
                self.timeDelayHelper = self.fastBeatTimeDelayHelper
            }
        }
    }
    

    open func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        do {
            var index: Int32 = 0
            while (index < self.max) {
                defer { index &+= 1 }
            if (self.timeDelayHelper.isTime(self.gameTickTimeDelayHelper.startTime)) {
                self.animationInterface.paintXY(graphics, self.xArray[index], self.getY())
            }
            }
        }
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
}

