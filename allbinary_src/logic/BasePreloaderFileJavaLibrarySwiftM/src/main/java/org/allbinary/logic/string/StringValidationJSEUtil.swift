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
// package org.allbinary.logic.string

import J2SEForSwiftLibrary

open class StringValidationJSEUtil: JObject {
    

    public override init() {
        super.init()
    }
    

    @discardableResult open class func isBlank(_ string: String!) -> Bool {
        let len: Int32 = JString.length(string)
        do {
            var i: Int32 = 0
            while (i < len) {
                defer { i &+= 1 }
            let c: UInt16 = JString.charAt(string, i)
            if (Character.isWhitespace(c) == false) {
                return false
            }
            }
        }
        return true
    }
}

