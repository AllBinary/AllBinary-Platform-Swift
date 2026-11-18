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
// package org.allbinary.input.motion.button

import J2SEForSwiftLibrary

open class TouchButtonsBuilderFactory: JObject {
    public static let NO_TOUCH_BUTTON_BUILDER_FACTORY: TouchButtonsBuilderFactory! = TouchButtonsBuilderFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open func getInstance() -> BaseTouchInput! {
        return NoButtonsTouchInputFactory.getInstance()
    }
}

