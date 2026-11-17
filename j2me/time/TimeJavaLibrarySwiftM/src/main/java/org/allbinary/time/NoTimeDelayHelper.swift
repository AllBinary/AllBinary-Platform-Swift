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

open class NoTimeDelayHelper: TimeDelayHelper {
    public static let SINGLETON: NoTimeDelayHelper! = NoTimeDelayHelper()
    

    public init() {
        super.init(0)
    }
    

    @discardableResult open override func isTimeTNT() -> Bool {
        return true
    }
    

    @discardableResult open override func isTimeSinceTNT(_ delay: Int32) -> Bool {
        return true
    }
    

    @discardableResult open override func isTime(_ currentTime: Int64) -> Bool {
        return true
    }
    

    @discardableResult open override func isTimeSince(_ delay: Int32, _ currentTime: Int64) -> Bool {
        return true
    }
}

