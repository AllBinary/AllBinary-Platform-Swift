/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.graphics.color.BasicColor

open class CaptionAnimationHelperBase: Animation {
    public static let INSTANCE: CaptionAnimationHelperBase! = CaptionAnimationHelperBase()

    public override init() {
        super.init()
    }
    

    @discardableResult open func isShowing() -> Bool {
        return false
    }
    

    open func tick() {
    }
    

    open func update(_ message: String!, _ basicColor: BasicColor!) {
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
    }
}

