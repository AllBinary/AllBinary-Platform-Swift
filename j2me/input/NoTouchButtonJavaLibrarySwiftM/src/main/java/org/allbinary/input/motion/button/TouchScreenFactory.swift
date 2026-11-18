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

open class TouchScreenFactory: JObject {
    fileprivate static let SINGLETON: TouchScreenFactory! = TouchScreenFactory()
    fileprivate var multiTouch: Bool = false
    fileprivate var touch: Bool = false
    fileprivate var touchScreenType: TouchScreenType! = nil

    private func initFields() {
    self.multiTouch = false
    self.touch = false
    self.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> TouchScreenFactory! {
        return TouchScreenFactory.SINGLETON
    }
    

    @discardableResult open func isMultiTouch() -> Bool {
        return self.multiTouch
    }
    

    open func setTouch(_ touch: Bool) {
    }
    

    @discardableResult open func isTouch() -> Bool {
        return self.touch
    }
    

    @discardableResult open func getTouchScreenType() -> TouchScreenType! {
        return self.touchScreenType
    }
}

