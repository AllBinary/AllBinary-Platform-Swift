/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// import java.io.InputStream
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

//J2MEForJ2ME
open class AbFileSystem: JObject {
    fileprivate static let instance: AbFileSystem! = AbFileSystem()
    fileprivate var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> AbFileSystem! {
        return AbFileSystem.instance
    }
    

    @discardableResult open func isDirectoryOrFile(_ path: String!) -> Bool {
        return false
    }
    

    @discardableResult open func isDirectory(_ path: String!) -> Bool {
        return false
    }
    

    @discardableResult open func getFilesAsStringArrayForPath(_ currentDirPath: String!) -> JArray<String?>! {
        return StringUtil.getInstance().getArrayInstance()
    }
    

    @discardableResult open func readAsString(_ fileName: String!) -> String! {
        let bytes: JArray<Int8>! = JArray<Int8>(1000000, 0)
        return self.readAsString(fileName, bytes)
    }
    

    @discardableResult open func readAsString(_ fileName: String!, _ bytes: JArray<Int8>!) -> String! {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open func close(_ closeable: JObject!) -> Bool {
        do {
            if (closeable != nil) {
                let inputStream: InputStream! = ((closeable as! InputStream))
                inputStream.close()
            }
            return true
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

