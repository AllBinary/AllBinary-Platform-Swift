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
// package org.allbinary.game.displayable.canvas

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

open class OverlayPaintable: InitUpdatePaintable {
    public var logUtil: LogUtil! = nil

    // Each class has its own field initializers
    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open override func update() {
        do {
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    open override func paint(_ graphics: Graphics!) {
    }
}

