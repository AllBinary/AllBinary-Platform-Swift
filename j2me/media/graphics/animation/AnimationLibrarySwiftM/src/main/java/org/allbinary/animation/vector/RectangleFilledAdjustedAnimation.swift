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
// package org.allbinary.animation.vector

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.ColorCompositeInterface

open class RectangleFilledAdjustedAnimation: RectangleFilledAnimation, ColorCompositeInterface {
    fileprivate var offsetX: Int32 = 0
    fileprivate var offsetY: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ width: Int32, _ height: Int32, _ offsetX: Int32, _ offsetY: Int32, _ basicColor: BasicColor!) {
        super.init(width, height, basicColor)
        self.initFields()
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.setBasicColorP(basicColor)
    }
    

    open override func nextFrame() {
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        super.paintXY(graphics, x &+ self.offsetX, y &+ self.offsetY)
    }
    

    open func setOffsetX(_ offsetX: Int32) {
        self.offsetX = offsetX
    }
    

    open func setOffsetY(_ offsetY: Int32) {
        self.offsetY = offsetY
    }
    

    @discardableResult open override func getBasicColorP() -> BasicColor! {
        return super.getBasicColorP()
    }
    

    open override func setBasicColorP(_ basicColor: BasicColor!) {
        super.setBasicColorP(basicColor)
    }
}

