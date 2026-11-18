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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationInterface
// import org.allbinary.graphics.CellPosition
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

open class TouchButton: Paintable {
    public var logUtil: LogUtil! = nil
    public var commonStrings: CommonStrings! = nil
    fileprivate var touchButtonInput: TouchButtonInput! = nil
    fileprivate var animationInterface: Animation! = nil
    public var rawRectangle: Rectangle! = nil
    public var xBorder: Int32 = 0
    public var yBorder: Int32 = 0
    public var rectangle: Rectangle! = nil
    public var cellPosition: CellPosition! = nil
    public var animationX: Int32 = 0
    public var animationY: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    self.rectangle = RectangleFactory.SINGLETON
    
    self.animationX = 0
    self.animationY = 0
    }
    

    public init(_ touchButtonInput: TouchButtonInput!, _ animationInterface: AnimationInterface!, _ rawRectangle: Rectangle!, _ cellPosition: CellPosition!, _ xBorder: Int32, _ yBorder: Int32) {
        super.init()
        self.initFields()
        self.touchButtonInput = touchButtonInput
        self.animationInterface = (animationInterface as! Animation)
        self.rawRectangle = rawRectangle
        self.cellPosition = cellPosition
        self.xBorder = xBorder
        self.yBorder = yBorder
        self.updateRectangle()
        self.logUtil.putF(StringMaker().append("Created: ").append(self.toString()).toString(), self, self.commonStrings.CONSTRUCTOR)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.animationInterface.paintXY(graphics, self.animationX, self.animationY)
    }
    

    open func updateRectangle() {
        do {
            let x: Int32 = self.rawRectangle.getWidth() &* self.cellPosition.getColumn()
            let y: Int32 = self.rawRectangle.getHeight() &* self.cellPosition.getRow()
            let pointFactory: PointFactory! = PointFactory.getInstance()
            self.rectangle = Rectangle(pointFactory.createXY(x &+ self.xBorder, y &+ self.yBorder), self.rawRectangle.getWidth(), self.rawRectangle.getHeight())
            let point: GPoint! = self.rectangle.getPoint()
            self.animationX = point.getX()
            self.animationY = point.getY()
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getCellPositionP() -> CellPosition! {
        return self.cellPosition
    }
    

    @discardableResult open func getRectangleP() -> Rectangle! {
        return self.rectangle
    }
    

    @discardableResult open func getTouchButtonInput() -> TouchButtonInput! {
        return self.touchButtonInput
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        stringBuffer.append("TouchButton: ")
        stringBuffer.append(stringUtil.toString(self.rectangle))
        stringBuffer.append(" CellPosition: ")
        stringBuffer.append(stringUtil.toString(self.cellPosition))
        stringBuffer.append(" xBorder: ")
        stringBuffer.appendint(self.xBorder)
        stringBuffer.append(" yBorder: ")
        stringBuffer.appendint(self.yBorder)
        return stringBuffer.toString()
    }
}

