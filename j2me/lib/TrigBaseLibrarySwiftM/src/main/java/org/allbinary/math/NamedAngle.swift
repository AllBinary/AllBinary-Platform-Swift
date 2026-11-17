/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import jsinterop.annotations.JsProperty
// import jsinterop.annotations.JsConstructor

open class NamedAngle: Angle {
    public var name: String! = nil

    // Each class has its own field initializers
    private func initFields() {
    
    }
    

    public init(_ angle: Int16, _ name: String!) {
        super.init(angle)
        self.initFields()
        self.name = name
    }
}

