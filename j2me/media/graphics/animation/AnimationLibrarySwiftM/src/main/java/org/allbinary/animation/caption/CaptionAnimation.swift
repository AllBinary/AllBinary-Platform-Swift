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

open class CaptionAnimation: Animation {
    fileprivate var animationInterface: Animation! = nil
    fileprivate var overlayAnimationInterface: Animation! = nil
    fileprivate var captionDx: Int32 = 0
    fileprivate var captionDy: Int32 = 0
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    
    
    
    }
    

    public init(_ animationInterface: Animation!, _ overlayAnimationInterface: Animation!, _ captionDx: Int32, _ captionDy: Int32, _ dx: Int32, _ dy: Int32) {
        super.init()
        self.initFields()
        self.animationInterface = animationInterface
        self.overlayAnimationInterface = overlayAnimationInterface
        self.captionDx = captionDx
        self.captionDy = captionDy
        self.dx = dx
        self.dy = dy
    }
    

    open override func nextFrame() {
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.animationInterface.paintXY(graphics, x &+ self.captionDx, y &+ self.captionDy)
        self.overlayAnimationInterface.paintXY(graphics, x &+ self.captionDx &+ self.dx, y &+ self.captionDy &+ self.dy)
    }
    

    open override func paintThreedXYZ(_ graphics: Graphics!, _ x: Int32, _ y: Int32, _ z: Int32) {
        self.animationInterface.paintThreedXYZ(graphics, x &+ self.captionDx, y &+ self.captionDy, z)
        self.overlayAnimationInterface.paintThreedXYZ(graphics, x &+ self.captionDx &+ self.dx, y &+ self.captionDy &+ self.dy, z)
    }
}

