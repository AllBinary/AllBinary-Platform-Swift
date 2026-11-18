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

open class PaintableComposite: Paintable {
    fileprivate var paintableArray: JArray<PaintableInterface?>! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ paintableArray: JArray<PaintableInterface?>!) {
        super.init()
        self.initFields()
        self.paintableArray = paintableArray
    }
    

    open override func paint(_ graphics: Graphics!) {
        do {
            var index: Int32 = self.paintableArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.paintableArray[index]!.paint(graphics)
            }
        }
    }
    

    open override func paintThreed(_ graphics: Graphics!) {
        do {
            var index: Int32 = self.paintableArray.length &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            self.paintableArray[index]!.paintThreed(graphics)
            }
        }
    }
}

