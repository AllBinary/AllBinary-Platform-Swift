/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

open class TouchScreenTypesFactory: JObject {
    fileprivate static let instance: TouchScreenTypesFactory! = TouchScreenTypesFactory()
    public var FINGER: TouchScreenType! = nil
    public var NOTOUCH: TouchScreenType! = nil
    public var STYLUS: TouchScreenType! = nil
    public var UNDEFINED: TouchScreenType! = nil

    private func initFields() {
    self.FINGER = TouchScreenType("Finger")
    self.NOTOUCH = TouchScreenType("No Touch")
    self.STYLUS = TouchScreenType("Stylus")
    self.UNDEFINED = TouchScreenType("Undefined")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> TouchScreenTypesFactory! {
        return TouchScreenTypesFactory.instance
    }
}

