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
// package org.allbinary.graphics.form

import J2SEForSwiftLibrary

open class LockableFormPaintableFactory: ItemPaintableFactory {
    fileprivate var lockedIndex: Int32 = 0

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ lockedIndex: Int32) {
        super.init()
        self.initFields()
        self.lockedIndex = lockedIndex
    }
    

    @discardableResult open override func getInstanceItemPaintable(_ paintableForm: PaintableForm!) -> ItemPaintable! {
        return LockablePaintable(self.lockedIndex)
    }
}

