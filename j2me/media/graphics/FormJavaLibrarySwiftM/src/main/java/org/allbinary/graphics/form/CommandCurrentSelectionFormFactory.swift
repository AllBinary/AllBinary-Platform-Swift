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
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.TouchFeatureFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.ABCustomItem

open class CommandCurrentSelectionFormFactory: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance(_ title: String!, _ items: JArray<ABCustomItem?>!, _ rectangle: Rectangle!, _ formType: FormType!, _ border: Int32, _ moveForSmallScreen: Bool, _ backgroundBasicColor: BasicColor!, _ foregroundBasicColor: BasicColor!) -> ScrollSelectionForm! {
        if (Features.getInstance().isFeature(TouchFeatureFactory.getInstance().TOUCH_ENABLED)) {
            let scrollSelectionForm: ScrollSelectionForm! = CommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
            scrollSelectionForm.`init`(rectangle, formType)
            return scrollSelectionForm
        } else {
            return ScrollSelectionFormNoneFactory.getInstance()
        }
    }
}

