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
// package org.allbinary.logic.io.file

import J2SEForSwiftLibrary
// import java.io.File

open class FilePathData: JObject {
    fileprivate static let instance: FilePathData! = FilePathData()
    public var SEPARATORCHAR: UInt16 = 0
    public var PATH_START: String! = nil

    private func initFields() {
    self.SEPARATORCHAR = File.separatorChar
    self.PATH_START = File.separator
    }
    

    @discardableResult open class func getInstance() -> FilePathData! {
        return FilePathData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
        if (File.separatorChar == UInt16(("\\" as Unicode.Scalar).value)) {
            self.PATH_START = jstr(File.separator) + jstr(File.separator)
        }
    }
}

