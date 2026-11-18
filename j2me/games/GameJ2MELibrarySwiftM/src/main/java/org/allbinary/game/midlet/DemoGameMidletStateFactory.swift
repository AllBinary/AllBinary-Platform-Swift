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
// package org.allbinary.game.midlet

import J2SEForSwiftLibrary

open class DemoGameMidletStateFactory: JObject {
    fileprivate static var STATE: DemoGameMidletStateFactory! = DemoGameMidletStateFactory()
    public var NONE: DemoGameMidletState! = nil
    public var START_DEMO: DemoGameMidletState! = nil
    public var START_GAME: DemoGameMidletState! = nil
    public var START_INPUT_MAPPING: DemoGameMidletState! = nil

    private func initFields() {
    self.NONE = DemoGameMidletState()
    self.START_DEMO = DemoGameMidletState()
    self.START_GAME = DemoGameMidletState()
    self.START_INPUT_MAPPING = DemoGameMidletState()
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> DemoGameMidletStateFactory! {
        return DemoGameMidletStateFactory.STATE
    }
}

