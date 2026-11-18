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
// package org.allbinary.logic.io

import J2SEForSwiftLibrary
// import java.io.IOException
// import java.io.OutputStream

open class NullOutputStream: OutputStream {
    public static let NULL_OUTPUT_STREAM: NullOutputStream! = NullOutputStream()

    public override init() {
        super.init()
    }
    

    open override func write(_ b: Int32) {
    }
    

    open override func write(_ b: JArray<Int8>!, _ off: Int32, _ len: Int32) {
    }
    

    open override func close() {
    }
}

