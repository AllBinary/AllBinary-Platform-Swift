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
// package org.allbinary.game.configuration.feature

import J2SEForSwiftLibrary

open class TouchFeatureFactory: JObject {
    fileprivate static let instance: TouchFeatureFactory! = TouchFeatureFactory()
    public var TOUCH_ENABLED: TouchFeature! = nil
    public var SHOW_SCREEN_BUTTONS: TouchFeature! = nil
    public var AUTO_HIDE_SHOW_SCREEN_BUTTONS: TouchFeature! = nil
    public var HIDE_SCREEN_BUTTONS: TouchFeature! = nil

    private func initFields() {
    self.TOUCH_ENABLED = TouchFeature("Touch Enabled")
    self.SHOW_SCREEN_BUTTONS = TouchFeature("Show")
    self.AUTO_HIDE_SHOW_SCREEN_BUTTONS = TouchFeature("Auto Hide (One Level)")
    self.HIDE_SCREEN_BUTTONS = TouchFeature("Hide")
    }
    

    @discardableResult open class func getInstance() -> TouchFeatureFactory! {
        return TouchFeatureFactory.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

