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
// package org.allbinary

import J2SEForSwiftLibrary

open class J2MEUtil: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func isJ2ME() -> Bool {
        return false
    }
    

    @discardableResult open class func isJ2SE() -> Bool {
        return true
    }
    

    @discardableResult open class func isHTML() -> Bool {
        return false
    }
}

