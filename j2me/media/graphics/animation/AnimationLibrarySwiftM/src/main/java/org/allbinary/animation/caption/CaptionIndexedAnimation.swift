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
// import javax.microedition.media.Player
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.AnimationEventHandler
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

open class CaptionIndexedAnimation: IndexedAnimation {
    fileprivate var animationInterface: Animation! = nil
    fileprivate var movieIndexedAnimationInterface: IndexedAnimation! = nil
    fileprivate var captionDx: Int32 = 0
    fileprivate var captionDy: Int32 = 0
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0
    fileprivate var time: Int32 = 0
    fileprivate var END_EVENT: AllBinaryEventObject! = nil
    fileprivate var timeDelayHelper: TimeDelayHelper! = nil
    fileprivate var player: Player! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    
    
    
    
    
    
    }
    

    public init(_ animationInterface: Animation!, _ movieIndexedAnimationInterface: IndexedAnimation!, _ player: Player!, _ captionDx: Int32, _ captionDy: Int32, _ dx: Int32, _ dy: Int32, _ time: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(animationBehavior)
        self.initFields()
        self.animationInterface = animationInterface
        self.movieIndexedAnimationInterface = movieIndexedAnimationInterface
        self.captionDx = captionDx
        self.captionDy = captionDy
        self.dx = dx
        self.dy = dy
        self.time = time
        self.END_EVENT = AllBinaryEventObject(self)
        let timePerFrame: Int32 = self.time / self.getSize()
        self.timeDelayHelper = TimeDelayHelper(timePerFrame)
        self.player = player
        self.player.start()
    }
    

    open override func nextFrame() {
        if (self.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            self.movieIndexedAnimationInterface.nextFrame()
        }
        if (self.isLastFrame()) {
            AnimationEventHandler.getInstance().fireEvent(self.END_EVENT)
        }
    }
    

    @discardableResult open override func isLastFrame() -> Bool {
        if (self.movieIndexedAnimationInterface.getFrame() == self.getSize() &- 1) {
            return true
        } else {
            return false
        }
    }
    

    open override func previousFrame() {
        self.movieIndexedAnimationInterface.previousFrame()
    }
    

    open override func setFrame(_ index: Int32) {
        self.movieIndexedAnimationInterface.setFrame(index)
    }
    

    @discardableResult open override func getFrame() -> Int32 {
        return self.movieIndexedAnimationInterface.getFrame()
    }
    

    @discardableResult open override func getSize() -> Int32 {
        return self.movieIndexedAnimationInterface.getSize()
    }
    

    open override func setSequence(_ sequence: JArray<Int32>!) {
    }
    

    @discardableResult open override func getSequence() -> JArray<Int32>! {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.animationInterface.paintXY(graphics, x &+ self.captionDx, y &+ self.captionDy)
        self.movieIndexedAnimationInterface.paintXY(graphics, x &+ self.captionDx &+ self.dx, y &+ self.captionDy &+ self.dy)
    }
    

    open override func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
        self.animationInterface.paintThreedXYZ(graphics, x &+ self.captionDx, y &+ self.captionDy, z)
        self.movieIndexedAnimationInterface.paintThreedXYZ(graphics, x &+ self.captionDx &+ self.dx, y &+ self.captionDy &+ self.dy, z)
    }
}

