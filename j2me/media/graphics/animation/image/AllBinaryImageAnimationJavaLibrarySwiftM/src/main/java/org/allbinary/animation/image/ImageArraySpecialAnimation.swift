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
// package org.allbinary.animation.image

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.special.SpecialAnimationInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class ImageArraySpecialAnimation: ImageArrayAnimation, SpecialAnimationInterface {
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var loopCount: Int32 = 0
    fileprivate var loopCountTotal: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.timeDelayHelper = TimeDelayHelper(270)
    self.loopCount = 0
    self.loopCountTotal = 1
    }
    

    public override init(_ imageArray: JArray<Image?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(imageArray, animationBehavior)
        self.initFields()
        self.reset()
    }
    

    @discardableResult open func getLoopCount() -> Int32 {
        return self.loopCount
    }
    

    open func setLastFrame() {
        self.circularIndexUtil.setIndex(self.circularIndexUtil.getSize() &- 1)
    }
    

    open override func reset() {
        self.setFrame(self.getSize() &- 1)
        self.loopCount = 0
    }
    

    open override func nextFrame() {
        if (self.getFrame() > 0) {
            if (self.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
                self.previousFrame()
                if (self.getFrame() == 0) {
                    self.loopCount &+= 1
                }
            }
        }
    }
    

    @discardableResult open func isComplete() -> Bool {
        if (self.loopCount < self.loopCountTotal || self.getFrame() != 0) {
            return false
        } else {
            return true
        }
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        var x: Int32 = x
        var y: Int32 = y
        x = DisplayInfoSingleton.getInstance().getLastHalfWidth() &- (self.getImage(self.circularIndexUtil.getIndex()).getWidth() >> 1)
        y = 5
        super.paintXY(graphics, x, y)
    }
}

