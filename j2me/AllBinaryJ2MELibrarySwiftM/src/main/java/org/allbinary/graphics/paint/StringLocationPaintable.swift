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

open class StringLocationPaintable: LocationPaintable {
    fileprivate var value: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ value: String!) {
        super.init()
        self.initFields()
        self.value = value
    }
    

    open override func paintXY(_ graphics: Graphics!, _ x: Int32, _ y: Int32) {
        graphics.drawString(self.value, x, y, 0)
    }
}

