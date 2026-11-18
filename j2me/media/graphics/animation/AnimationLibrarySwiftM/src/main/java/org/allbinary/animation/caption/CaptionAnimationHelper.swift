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
// package org.allbinary.animation.caption

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.animation.text.TextAnimation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class CaptionAnimationHelper: CaptionAnimationHelperBase {
    fileprivate var timeHelper: TimeDelayHelper! = nil
    fileprivate var textAnimation: TextAnimation! = nil
    fileprivate var captionAnimation: Animation! = nil
    fileprivate var animation: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.timeHelper = TimeDelayHelper(620)
    self.textAnimation = TextAnimation(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance())
    
    self.animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
    }
    

    public init(_ captionAnimation: Animation!, _ captionDx: Int32, _ captionDy: Int32, _ dx: Int32, _ dy: Int32) {
        super.init()
        self.initFields()
        self.captionAnimation = CaptionAnimation(captionAnimation, self.textAnimation, captionDx, captionDy, dx, dy)
    }
    

    @discardableResult open override func isShowing() -> Bool {
        if (self.animation === self.captionAnimation) {
            return true
        } else {
            return false
        }
    }
    

    open override func tick() {
        if (self.timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            self.animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        }
    }
    

    open override func update(_ message: String!, _ basicColor: BasicColor!) {
        self.textAnimation.setBasicColorP(basicColor)
        self.textAnimation.setText(message)
        self.animation = self.captionAnimation
        self.timeHelper.setStartTimeTNT()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.animation.paintXY(graphics, x, y)
    }
}

