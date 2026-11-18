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

open class MainFeatureFactory: JObject {
    fileprivate static let instance: MainFeatureFactory! = MainFeatureFactory()
    public var FULL_SCREEN: Feature! = nil
    public var TITLE_BAR: Feature! = nil
    public var STATIC: Feature! = nil
    public var LOAD_ONDEMAND: Feature! = nil
    public var LOAD_ALL: Feature! = nil

    private func initFields() {
    self.FULL_SCREEN = Feature("Full Screen")
    self.TITLE_BAR = Feature("Title Bar")
    self.STATIC = Feature("Static Dependent Feature")
    self.LOAD_ONDEMAND = Feature("Load OnDemand")
    self.LOAD_ALL = Feature("Load All")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> MainFeatureFactory! {
        return MainFeatureFactory.instance
    }
}

