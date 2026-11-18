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

open class TouchButtonBlankResource: TouchButtonResource {
    fileprivate static let instance: TouchButtonResource! = TouchButtonBlankResource()
    

    @discardableResult open class func getInstance() -> TouchButtonResource! {
        return TouchButtonBlankResource.instance
    }
    

    public init() {
        super.init("/touch_button_64_by_64.png", "/touch_button_hint_64_by_64.png")
    }
}

