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
// package org.allbinary.logic.io

import J2SEForSwiftLibrary
// import java.io.BufferedReader
// import java.io.FileReader
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil

open class BufferedLineReader: JObject {
    fileprivate var tmpIn: BufferedReader! = nil

    private func initFields() {
    
    }
    

    public init(_ file: AbFile!) {
        super.init()
        self.initFields()
        self.tmpIn = BufferedReader(FileReader(AbFileNativeUtil.get(file)))
    }
    

    open func readUpToLines(_ readAheadIndex: Int64) {
    }
    

    @discardableResult open func readLine() -> String! {
        return self.tmpIn.readLine()
    }
    

    @discardableResult open func ready() -> Bool {
        return self.tmpIn.ready()
    }
    

    @discardableResult open func getSize() -> Int64 {
        return 0
    }
    

    @discardableResult open func getCurrent() -> Int32 {
        return 0
    }
}

