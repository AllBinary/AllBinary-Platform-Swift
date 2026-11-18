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
// package org.allbinary.animation.text

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior

open class AdjustCustomTextAnimation: CustomTextAnimation {
    fileprivate var dx: Int32 = 0
    fileprivate var dy: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ text: String!, _ fontSize: Int32, _ dx: Int32, _ dy: Int32, _ animationBehavior: AnimationBehavior!) {
        super.init(text, fontSize, animationBehavior)
        self.initFields()
        self.dx = dx
        self.dy = dy
    }
    

    @discardableResult open override func getDx() -> Int32 {
        return self.dx
    }
    

    open override func setDx(_ dx: Int32) {
        self.dx = dx
    }
    

    @discardableResult open override func getDy() -> Int32 {
        return self.dy
    }
    

    open override func setDy(_ dy: Int32) {
        self.dy = dy
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        super.paintXY(graphics, x &+ self.dx, y &+ self.dy)
    }
}

