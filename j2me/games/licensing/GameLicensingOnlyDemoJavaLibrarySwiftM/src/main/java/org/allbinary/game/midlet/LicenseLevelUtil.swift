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

open class LicenseLevelUtil: JObject {
    fileprivate static let instance: LicenseLevelUtil! = LicenseLevelUtil()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> LicenseLevelUtil! {
        return LicenseLevelUtil.instance
    }
    

    @discardableResult open func getMaxLevel(_ maxLevel: Int32, _ demoLevel: Int32) -> Int32 {
        return demoLevel
    }
}

