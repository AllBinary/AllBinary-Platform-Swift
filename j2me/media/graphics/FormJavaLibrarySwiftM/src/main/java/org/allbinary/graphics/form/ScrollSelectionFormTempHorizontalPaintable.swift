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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.form.item.ABCustomItem

open class ScrollSelectionFormTempHorizontalPaintable: ItemIndexPaintable {
    fileprivate var scrollSelectionForm: ScrollSelectionForm! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ scrollSelectionForm: ScrollSelectionForm!) {
        super.init()
        self.initFields()
        self.scrollSelectionForm = scrollSelectionForm
    }
    

    @discardableResult open override func paint(_ graphics: Graphics!, _ index: Int32, _ item: ABCustomItem!, _ dx: Int32, _ dy: Int32) -> Int32 {
        return self.scrollSelectionForm.paintItemTempHorizontal(graphics, index, item, dx, dy)
    }
}

