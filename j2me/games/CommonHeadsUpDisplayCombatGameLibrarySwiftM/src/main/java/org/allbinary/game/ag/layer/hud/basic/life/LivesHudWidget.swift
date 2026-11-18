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
// package org.allbinary.game.ag.layer.hud.basic.life

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.game.ag.life.Life
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.paint.PaintableInterface

open class LivesHudWidget: BasicHud, PaintableInterface {
    fileprivate var lifeInterface: Life! = nil
    fileprivate var xArray: JArray<Int32>! = nil
    fileprivate var animationInterface: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    }
    

    public init(_ animationInterface: Animation!, _ lifeInterface: Life!, _ location: Int32, _ direction: Int32) {
        super.init(location, direction, 2, BasicColorFactory.getInstance().WHITE)
        self.initFields()
        self.lifeInterface = lifeInterface
        let size: Int32 = Int32(truncatingIfNeeded: self.getLifeInterface().getMaxlives())
        self.xArray = JArray<Int32>(size, 0)
        self.animationInterface = animationInterface
        self.updateMaxWidth = Int32(Int32(truncatingIfNeeded: self.lifeInterface.getMaxlives())) &* 16
        self.updateMaxHeight = 16
    }
    

    open override func updateMeasurement(_ graphics: Graphics!) {
        super.updateMeasurement(graphics)
        let maxLives: Int32 = Int32(truncatingIfNeeded: self.getLifeInterface().getMaxlives())
        do {
            var index: Int32 = 0
            while (index < maxLives) {
                defer { index &+= 1 }
            self.xArray[index] = self.getX() &+ (index &* 16)
            }
        }
    }
    

    open override func onDisplayChangeEvent(_ displayChangeEvent: DisplayChangeEvent!) {
        super.onDisplayChangeEvent(displayChangeEvent)
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open override func setX(_ x: Int32) {
        super.setX(x)
        self.myFontProcessor = self.updateMyFontProcessor
    }
    

    open func paint(_ graphics: Graphics!) {
        self.myFontProcessor.process(graphics)
        do {
            var index: Int32 = Int32(truncatingIfNeeded: self.getLifeInterface().get())
            while (jPreDecrement(&index) >= 0) {
            self.animationInterface.paintXY(graphics, self.xArray[index], self.getY())
            }
        }
    }
    

    open func paintThreed(_ graphics: Graphics!) {
    }
    

    @discardableResult open func getLifeInterface() -> Life! {
        return self.lifeInterface
    }
}

