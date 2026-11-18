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
// import java.io.FileNotFoundException
// import java.io.FileOutputStream
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil

open class AbFileOutputStream: FileOutputStream {
    

    @discardableResult open class func createFromAbFile(_ file: AbFile!) -> AbFileOutputStream! {
        return AbFileOutputStream(file.getPath(), false)
    }
    

    @discardableResult open class func createFromAbFileAppend(_ file: AbFile!, _ append: Bool) -> AbFileOutputStream! {
        return AbFileOutputStream(file.getPath(), append)
    }
    

    @discardableResult open class func createFromFilePath(_ name: String!) -> AbFileOutputStream! {
        return AbFileOutputStream(name, false)
    }
    

    @discardableResult open class func createFromFilePathAppend(_ name: String!, _ append: Bool) -> AbFileOutputStream! {
        return AbFileOutputStream(name, append)
    }
    

    public init(_ name: String!, _ append: Bool) {
        super.init(name, append)
    }
}

