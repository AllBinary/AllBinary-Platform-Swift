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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.ColorChangeEventHandler
// import org.allbinary.graphics.color.ColorChangeListener
// import org.allbinary.graphics.form.FormPaintable
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.form.item.ABStringComponent
// import org.allbinary.graphics.form.item.ABTextItem
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.util.event.AllBinaryEventObject

open class GameScrollMenuPaintable: BasicGameDemoPaintable, ColorChangeListener {
    

    public init(_ mainDemoStatePaintable: Paintable!, _ ownershipPaintable: Paintable!, _ helpPaintableInterface: Paintable!, _ basicColor: BasicColor!) {
        super.init(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        self.setColor(basicColor)
        ColorChangeEventHandler.getInstance().addListenerInterface(self)
    }
    

    open override func setState(_ state: Int32) {
        self.setCurrentStatePaintable(self.getMainDemoStatePaintable())
    }
    

    open func onEvent(_ eventObject: AllBinaryEventObject!) {
    }
    

    open func setColor(_ basicColor: BasicColor!) {
        let mainGameDemoStatePaintable: MainGameDemoStatePaintable! = (self.getMainDemoStatePaintable() as! MainGameDemoStatePaintable)
        let formPaintable: FormPaintable! = (mainGameDemoStatePaintable.getMenuPaintableInterface() as! FormPaintable)
        let scrollSelectionForm: ScrollSelectionForm! = (formPaintable.getForm() as! ScrollSelectionForm)
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor)
        scrollSelectionForm.setButtonBasicColor(basicColor)
        var item: ABTextItem! = nil
        var stringComponent: ABStringComponent! = nil
        do {
            var index: Int32 = scrollSelectionForm.size() &- 1
            while (index >= 0) {
                defer { index &-= 1 }
            item = (scrollSelectionForm.get(index) as! ABTextItem)
            stringComponent = item.getLabelStringComponent()
            if (stringComponent != nil) {
                stringComponent.setForegroundBasicColor(basicColor)
            }
            }
        }
    }
}

