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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.graphics.CellPosition
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle

open class FullTouchButton: TouchButton {
    

    @discardableResult open override class func createButton(_ touchButtonInput: TouchButtonInput!, _ touchButtonResource: TouchButtonResource!, _ rawRectangle: Rectangle!, _ cellPosition: CellPosition!, _ xBorder: Int32, _ yBorder: Int32) -> FullTouchButton! {
        return FullTouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    }
    

    public override init(_ touchButtonInput: TouchButtonInput!, _ animationInterface: Animation!, _ hintAnimationInterface: Animation!, _ rawRectangle: Rectangle!, _ cellPosition: CellPosition!, _ xBorder: Int32, _ yBorder: Int32) {
        super.init(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    }
    

    open override func updateRectangle() {
        do {
            let pointFactory: PointFactory! = PointFactory.getInstance()
            let x: Int32 = self.rawRectangle.getWidth() &* self.cellPositionP.getColumn()
            let y: Int32 = self.rawRectangle.getHeight() &* self.cellPositionP.getRow()
            self.rectangleP = Rectangle(pointFactory.createXY(x, y), self.rawRectangle.getWidth() + (2 * self.xBorder), self.rawRectangle.getHeight() + (2 * self.yBorder))
            let point: GPoint! = self.rectangleP.getPoint()
            self.animationX = point.getX() + self.xBorder
            self.animationY = point.getY() + self.yBorder
            self.hintAnimationY = self.animationY - self.rectangleP.getHeight() >> 1
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

