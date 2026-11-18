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
// package org.allbinary.logic.java

import J2SEForSwiftLibrary
// import org.allbinary.logic.string.StringMaker

open class PrimitiveArrayToString: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func toString(_ floats: JArray<Float>!) -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        do {
            var index: Int32 = 0
            while (index < floats.length) {
                defer { index &+= 1 }
            stringBuffer.appendfloat(floats[index])
            }
        }
        return stringBuffer.toString()
    }
}

