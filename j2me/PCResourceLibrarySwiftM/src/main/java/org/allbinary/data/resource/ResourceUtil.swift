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
// package org.allbinary.data.resource

import J2SEForSwiftLibrary
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.FileInputStream
// import java.io.InputStream
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

//J2SE - PC
open class ResourceUtil: JObject {
    fileprivate static let instance: ResourceUtil! = ResourceUtil()
    public var logUtil: LogUtil! = nil
    fileprivate var path: String! = nil
    fileprivate var ext: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.path = StringUtil.getInstance().EMPTY_STRING
    self.ext = StringUtil.getInstance().EMPTY_STRING
    }
    

    @discardableResult open class func getInstance() -> ResourceUtil! {
        return ResourceUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setLoadingPaths(_ path: String!, _ ext: String!) {
        self.path = path
        self.ext = ext
    }
    

    open func setClassLoader(_ classLoader: ClassLoader!) {
    }
    

    @discardableResult open func getResourceAsStream(_ resource: String!) -> InputStream! {
        var inputStream: InputStream! = self.getResourceAsStreamAtStart(resource, 2)
        if (inputStream == nil) {
            inputStream = self.getResourceAsStreamAtStart(resource, 1)
            if (inputStream == nil) {
                jThrow(JException("Exception", StringMaker().append("Unable to obtain: ").append(resource).toString()))
            }
        }
        return inputStream
    }
    

    @discardableResult fileprivate func getResourceAsStreamAtStart(_ resource: String!, _ startIndex: Int32) -> InputStream! {
        let inputStream: InputStream! = FileInputStream(StringMaker().append(self.path).append(resource).append(self.ext).toString())
        if (inputStream != nil) {
            let byteArray: JArray<Int8>! = JArray<Int8>(inputStream.available(), 0)
            StreamUtil.getInstance().getByteArray(inputStream, ByteArrayOutputStream(), byteArray)
            return ByteArrayInputStream(byteArray)
        }
        return inputStream
    }
    

    open func addResource(_ resource: String!, _ value: Int32!) {
    }
}

