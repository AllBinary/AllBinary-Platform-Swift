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
// package org.allbinary.time

import J2SEForSwiftLibrary

open class GameTickTimeDelayHelperFactory: JObject {
    fileprivate static let instance: GameTickTimeDelayHelper! = GameTickTimeDelayHelper(-1)
    

    @discardableResult public static func getInstance() -> GameTickTimeDelayHelper! {
        return GameTickTimeDelayHelperFactory.instance
    }
    

    public override init() {
        super.init()
    }
}

