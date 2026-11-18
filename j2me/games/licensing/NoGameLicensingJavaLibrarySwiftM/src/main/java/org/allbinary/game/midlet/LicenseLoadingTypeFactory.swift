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

open class LicenseLoadingTypeFactory: JObject {
    fileprivate static let instance: LicenseLoadingTypeFactory! = LicenseLoadingTypeFactory()
    public var INITIAL_LOADING: LicenseLoadingType! = nil
    public var GAME_START: LicenseLoadingType! = nil
    public var LOGIN: LicenseLoadingType! = nil
    public var OTHER: LicenseLoadingType! = nil

    private func initFields() {
    self.INITIAL_LOADING = LicenseLoadingType("Initial Loading")
    self.GAME_START = LicenseLoadingType("Game Start")
    self.LOGIN = LicenseLoadingType("Login")
    self.OTHER = LicenseLoadingType("Other/Usually The First Non Demo Level")
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getIntance() -> LicenseLoadingTypeFactory! {
        return LicenseLoadingTypeFactory.instance
    }
}

