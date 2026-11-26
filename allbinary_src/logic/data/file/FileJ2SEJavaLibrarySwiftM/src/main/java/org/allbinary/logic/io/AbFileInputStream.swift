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
// import java.io.File
// import java.io.FileInputStream
// import java.io.FileNotFoundException
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil

open class AbFileInputStream: FileInputStream {
    

    public override init(_ name: String!) {
        super.init(name)
    }
    

    @discardableResult open class func createFromAbFile(_ file: AbFile!) -> AbFileInputStream! {
        return AbFileInputStream(AbFileNativeUtil.get(file).getPath())
    }
    

    @discardableResult open class func createFromFile(_ file: File!) -> AbFileInputStream! {
        return AbFileInputStream(file.getPath())
    }
}

