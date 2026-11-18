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
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
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
    fileprivate var hintAnimationInterface: Animation! = nil
    public var rawRectangle: Rectangle! = nil
    public var xBorder: Int32 = 0
    public var yBorder: Int32 = 0
    public var rectangleP: Rectangle! = nil
    public var cellPositionP: CellPosition! = nil
    public var animationX: Int32 = 0
    public var animationY: Int32 = 0
    public var hintAnimationY: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    
    self.rectangleP = RectangleFactory.SINGLETON
    
    self.animationX = 0
    self.animationY = 0
    self.hintAnimationY = 0
    }
    

    @discardableResult open class func createButton(_ touchButtonInput: TouchButtonInput!, _ touchButtonResource: TouchButtonResource!, _ rawRectangle: Rectangle!, _ cellPosition: CellPosition!, _ xBorder: Int32, _ yBorder: Int32) -> TouchButton! {
        return TouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    }
    

    public init(_ touchButtonInput: TouchButtonInput!, _ animationInterface: Animation!, _ hintAnimationInterface: Animation!, _ rawRectangle: Rectangle!, _ cellPosition: CellPosition!, _ xBorder: Int32, _ yBorder: Int32) {
        super.init()
        self.initFields()
        self.touchButtonInput = touchButtonInput
        self.animationInterface = animationInterface
        self.hintAnimationInterface = hintAnimationInterface
        self.rawRectangle = rawRectangle
        self.cellPositionP = cellPosition
        self.xBorder = xBorder
        self.yBorder = yBorder
        self.updateRectangle()
        self.logUtil.putF(StringMaker().append("Created: ").append(self.toString()).toString(), self, self.commonStrings.CONSTRUCTOR)
    }
    

    open func paintHint(_ graphics: Graphics!) {
        self.hintAnimationInterface.paintXY(graphics, self.animationX, self.hintAnimationY)
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.animationInterface.paintXY(graphics, self.animationX, self.animationY)
    }
    

    open func updateRectangle() {
        do {
            let pointFactory: PointFactory! = PointFactory.getInstance()
            let x: Int32 = self.rawRectangle.getWidth() &* self.cellPositionP.getColumn()
            let y: Int32 = self.rawRectangle.getHeight() &* self.cellPositionP.getRow()
            self.rectangleP = Rectangle(pointFactory.createXY(x &+ self.xBorder, y &+ self.yBorder), self.rawRectangle.getWidth(), self.rawRectangle.getHeight())
            let point: GPoint! = self.rectangleP.getPoint()
            self.animationX = point.getX()
            self.animationY = point.getY()
            self.hintAnimationY = self.animationY &- 32
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open func getCellPosition() -> CellPosition! {
        return self.cellPositionP
    }
    

    @discardableResult open func getRectangle() -> Rectangle! {
        return self.rectangleP
    }
    

    @discardableResult open func getTouchButtonInput() -> TouchButtonInput! {
        return self.touchButtonInput
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        let stringUtil: StringUtil! = StringUtil.getInstance()
        stringBuffer.append("TouchButton: ")
        stringBuffer.append(stringUtil.toString(self.getRectangle()))
        stringBuffer.append(" CellPosition: ")
        stringBuffer.append(stringUtil.toString(self.cellPositionP))
        stringBuffer.append(" xBorder: ")
        stringBuffer.appendint(self.xBorder)
        stringBuffer.append(" yBorder: ")
        stringBuffer.appendint(self.yBorder)
        return stringBuffer.toString()
    }
}

