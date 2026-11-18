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
// package org.allbinary.animation

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColorFactory

open class ColorLessVectorAnimation: VectorAnimation {
    

    public init(_ currentPoints: JArray<JArray<JArray<Int32>?>?>!, _ animationBehavior: AnimationBehavior!) {
        super.init(currentPoints, BasicColorFactory.getInstance().WHITE, animationBehavior)
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        self.paintVectors(graphics, x, y)
    }
}

