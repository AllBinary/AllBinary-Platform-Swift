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

open class FileFactory: JObject {
    fileprivate static let instance: FileFactory! = FileFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> FileFactory! {
        return FileFactory.instance
    }
    

    @discardableResult open func getInstance(_ filePath: String!) -> AbFile! {
        return AbFile.createAbFileFromRawPath(filePath)
    }
    

    @discardableResult open func getInstance(_ file: AbFile!, _ childFilePath: String!) -> AbFile! {
        return AbFile.createAbFileWithChild(file, childFilePath)
    }
    

    @discardableResult open func isFile(_ path: String!) -> Bool {
        let file: AbFile! = AbFile.createAbFile(path)
        if (file.exists()) {
            return true
        } else {
            return false
        }
    }
}

