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
// import org.allbinary.AndroidUtil
// import org.allbinary.graphics.color.BasicColor

open class AdjustedCircleAnimation: CircleAnimation {
    fileprivate var xAdjustment: Int32 = 0
    fileprivate var yAdjustment: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.xAdjustment = 0
    self.yAdjustment = 0
    }
    

    @discardableResult open class func createAnimation(_ width: Int32, _ height: Int32, _ xAdjustment: Int32, _ yAdjustment: Int32, _ basicColor: BasicColor!) -> AdjustedCircleAnimation! {
        let adjustedCircleAnimation: AdjustedCircleAnimation! = AdjustedCircleAnimation(width, height, basicColor)
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment)
        return adjustedCircleAnimation
    }
    

    @discardableResult open class func createW(_ width: Int32, _ height: Int32, _ innerWidth: Int32, _ basicColor: BasicColor!) -> AdjustedCircleAnimation! {
        let adjustedCircleAnimation: AdjustedCircleAnimation! = AdjustedCircleAnimation(width, height, basicColor)
        adjustedCircleAnimation.`init`(innerWidth)
        return adjustedCircleAnimation
    }
    

    public override init(_ width: Int32, _ height: Int32, _ basicColor: BasicColor!) {
        super.init(width, height, basicColor)
        self.initFields()
    }
    

    fileprivate func initXY(_ xAdjustment: Int32, _ yAdjustment: Int32) {
        self.xAdjustment = xAdjustment
        self.yAdjustment = yAdjustment
    }
    

    fileprivate func `init`(_ innerWidth: Int32) {
        if (AndroidUtil.isAndroid()) {
            let widthPortion: Int32 = (((innerWidth / 3) &* 10) / 7)
            self.xAdjustment = -((self.width >> 1) - widthPortion)
            self.yAdjustment = self.xAdjustment
        } else {
            self.xAdjustment = -((self.width >> 1) - innerWidth)
            self.yAdjustment = self.xAdjustment
        }
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.basicSetColorUtil.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
        graphics.drawArc(x &+ self.xAdjustment, y &+ self.yAdjustment, self.width, self.height, 0, self.TOTAL_ANGLE)
    }
}

