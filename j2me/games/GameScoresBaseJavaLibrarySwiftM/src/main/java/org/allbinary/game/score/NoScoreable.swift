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
// package org.allbinary.game.score

import J2SEForSwiftLibrary

open class NoScoreable: Scoreable {
    fileprivate static let SINGLETON: NoScoreable! = NoScoreable()
    

    @discardableResult open class func getInstance() -> NoScoreable! {
        return NoScoreable.SINGLETON
    }
    

    public init() {
        super.init(0)
    }
    

    open override func addPoints(_ points: Int32) {
    }
    

    open override func removePoints(_ points: Int32) {
    }
}

