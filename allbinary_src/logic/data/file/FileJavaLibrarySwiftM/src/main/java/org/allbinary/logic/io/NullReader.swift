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
// import java.io.Reader

open class NullReader: Reader {
    public static let NULL_READER: NullReader! = NullReader()

    public override init() {
        super.init()
    }
    

    @discardableResult open override func read() -> Int32 {
        return -1
    }
    

    @discardableResult open override func read(_ cbuf: JArray<UInt16>!, _ off: Int32, _ len: Int32) -> Int32 {
        return -1
    }
    

    @discardableResult open override func ready() -> Bool {
        return false
    }
    

    @discardableResult open override func skip(_ n: Int64) -> Int64 {
        return 0
    }
    

    open override func close() {
    }
}

