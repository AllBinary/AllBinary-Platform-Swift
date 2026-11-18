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
// package org.allbinary.graphics.paint

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation

open class AnimationCompositePaintable: InitUpdatePaintable {
    fileprivate var animationInterface: Animation! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ animationInterface: Animation!) {
        super.init()
        self.initFields()
        self.animationInterface = animationInterface
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.animationInterface.paintXY(graphics, 0, 0)
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        self.animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
}

