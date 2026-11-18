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
// package org.allbinary.game.layer

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.paint.Paintable

open class SWTBlackPaintable: Paintable {
    fileprivate var basicSetColorUtil: BasicColorSetUtil! = nil
    fileprivate var BLACK: BasicColor! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.BLACK = BasicColorFactory.getInstance().BLACK
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.basicSetColorUtil.setBasicColorP(graphics, self.BLACK)
    }
}

