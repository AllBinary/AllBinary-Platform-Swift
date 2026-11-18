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
// import org.allbinary.logic.io.file.AbFile

open class DataOutputStreamFactory: JObject {
    fileprivate static let instance: DataOutputStreamFactory! = DataOutputStreamFactory()

    public override init() {
        super.init()
    }
    

    @discardableResult open class func getInstance() -> DataOutputStreamFactory! {
        return DataOutputStreamFactory.instance
    }
    

    @discardableResult open func getInstanceForAbFile(_ file: AbFile!) -> AbDataOutputStream! {
        let idFileOutputStream: AbFileOutputStream! = AbFileOutputStream.createFromAbFile(file)
        let idOutData: AbDataOutputStream! = AbDataOutputStream(idFileOutputStream)
        return idOutData
    }
    

    @discardableResult open func getInstance(_ filePath: String!, _ fileName: String!) -> AbDataOutputStream! {
        let fileStreamFactory: FileStreamFactory! = FileStreamFactory.getInstance()
        let fileOutputStream: AbFileOutputStream! = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName)
        let idOutData: AbDataOutputStream! = AbDataOutputStream(fileOutputStream)
        return idOutData
    }
}

