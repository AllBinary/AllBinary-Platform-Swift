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
// package org.allbinary.game.paint

import J2SEForSwiftLibrary
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable

open class MainGameDemoStatePaintable: Paintable {
    fileprivate var ownershipPaintableInterface: Paintable! = nil
    fileprivate var menuPaintableInterface: Paintable! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    }
    

    public init(_ ownershipPaintableInterface: Paintable!, _ menuPaintableInterface: Paintable!) {
        super.init()
        self.initFields()
        self.ownershipPaintableInterface = ownershipPaintableInterface
        self.menuPaintableInterface = menuPaintableInterface
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.menuPaintableInterface.paint(graphics)
        self.ownershipPaintableInterface.paint(graphics)
    }
    

    @discardableResult open func getOwnershipPaintableInterface() -> Paintable! {
        return self.ownershipPaintableInterface
    }
    

    @discardableResult open func getMenuPaintableInterface() -> Paintable! {
        return self.menuPaintableInterface
    }
}

