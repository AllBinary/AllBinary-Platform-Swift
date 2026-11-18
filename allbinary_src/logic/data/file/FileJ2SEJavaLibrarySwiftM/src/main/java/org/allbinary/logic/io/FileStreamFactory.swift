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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.path.AbPath

open class FileStreamFactory: JObject {
    fileprivate static var SINGLETON: JObject! = NullUtil.getInstance().NULL_OBJECT
    

    @discardableResult open class func getInstance() -> FileStreamFactory! {
        if (FileStreamFactory.SINGLETON === NullUtil.getInstance().NULL_OBJECT) {
            FileStreamFactory.SINGLETON = FileStreamFactory()
        }
        return (FileStreamFactory.SINGLETON as! FileStreamFactory)
    }
    

    public override init() {
        super.init()
    }
    

    @discardableResult open func getFileInputStreamInstance(_ path: String!, _ fileName: String!) -> AbFileInputStream! {
        let FILEABPATH: AbPath! = AbPath(path, fileName)
        let file: AbFile! = AbFile.createAbFileFromAbPath(FILEABPATH)
        return AbFileInputStream.createFromAbFile(file)
    }
    

    @discardableResult open func getFileOutputStreamInstance(_ path: String!, _ fileName: String!) -> AbFileOutputStream! {
        let FILEABPATH: AbPath! = AbPath(path, fileName)
        let file: AbFile! = AbFile.createAbFileFromAbPath(FILEABPATH)
        if (file.exists()) {
            file.delete()
            file.createNewFile()
        }
        return AbFileOutputStream.createFromAbFile(file)
    }
    

    open func delete(_ path: String!, _ fileName: String!) {
        let FILEABPATH: AbPath! = AbPath(path, fileName)
        let file: AbFile! = AbFile.createAbFileFromAbPath(FILEABPATH)
        file.delete()
    }
}

