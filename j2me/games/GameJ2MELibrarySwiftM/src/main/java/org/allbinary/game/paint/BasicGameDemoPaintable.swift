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
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.StatePaintable

open class BasicGameDemoPaintable: StatePaintable {
    fileprivate var mainDemoStatePaintable: Paintable! = nil
    fileprivate var ownershipPaintable: Paintable! = nil
    fileprivate var helpPaintableInterface: Paintable! = nil
    fileprivate var currentStatePaintable: Paintable! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    
    
    self.currentStatePaintable = NullPaintable.getInstance()
    }
    

    public init(_ mainDemoStatePaintable: Paintable!, _ ownershipPaintable: Paintable!, _ helpPaintableInterface: Paintable!) {
        super.init()
        self.initFields()
        self.mainDemoStatePaintable = mainDemoStatePaintable
        self.setCurrentStatePaintable(NullPaintable.getInstance())
        self.ownershipPaintable = ownershipPaintable
        self.helpPaintableInterface = helpPaintableInterface
    }
    

    open override func setState(_ state: Int32) {
        if (state == 0) {
            self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
        } else if (state == 1) {
            self.setCurrentStatePaintable(self.helpPaintableInterface)
        } else {
            self.setCurrentStatePaintable(self.ownershipPaintable)
        }
    }
    

    open override func paint(_ graphics: Graphics!) {
        self.getCurrentStatePaintable().paint(graphics)
    }
    

    @discardableResult open func getHelpPaintableInterface() -> Paintable! {
        return self.helpPaintableInterface
    }
    

    open func setCurrentStatePaintable(_ currentStatePaintable: Paintable!) {
        self.currentStatePaintable = currentStatePaintable
    }
    

    @discardableResult open func getCurrentStatePaintable() -> Paintable! {
        return self.currentStatePaintable
    }
    

    @discardableResult open func getMainDemoStatePaintable() -> Paintable! {
        return self.mainDemoStatePaintable
    }
}

