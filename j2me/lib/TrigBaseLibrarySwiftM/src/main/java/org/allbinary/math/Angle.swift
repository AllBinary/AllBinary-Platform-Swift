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
// package org.allbinary.math

import J2SEForSwiftLibrary
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

open class Angle: JObject {
    fileprivate var value: Int16 = 0

    private func initFields() {
    
    }
    

    public init(_ angle: Int16) {
        super.init()
        self.initFields()
        self.value = angle
    }
    

    @discardableResult open func getValue() -> Int16 {
        return self.value
    }
}

