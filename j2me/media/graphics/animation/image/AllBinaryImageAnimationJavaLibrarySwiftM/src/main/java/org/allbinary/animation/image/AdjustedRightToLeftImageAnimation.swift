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

open class AdjustedRightToLeftImageAnimation: RightToLeftImageAnimation {
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    self.dx = 0
    self.dy = 0
    }
    

    public init(_ image: Image!, _ dx: Int32, _ dy: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(image, animationBehavior)
        self.initFields()
        self.`init`(dx, dy)
    }
    

    open func `init`(_ dx: Int32, _ dy: Int32) {
        self.dx = dx
        self.dy = dy
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        super.paintXY(graphics, x &+ self.dx, y &+ self.dy)
    }
}

