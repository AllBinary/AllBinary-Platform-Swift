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
// import java.io.InputStream
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

//J2SE - J2ME
open class ResourceUtil: JObject {
    fileprivate static var classLoader: JObject! = NullUtil.getInstance().NULL_OBJECT
    fileprivate static let instance: ResourceUtil! = ResourceUtil()
    public var logUtil: LogUtil! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    }
    

    @discardableResult open class func getInstance() -> ResourceUtil! {
        return ResourceUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setLoadingPaths(_ path: String!, _ ext: String!) {
        self.logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, self, "setLoadingPaths")
    }
    

    open func setClassLoader(_ classLoader: ClassLoader!) {
        self.logUtil.putF(StringMaker().append("Resource Loader: ").append(JObject.className(classLoader)).toString(), self, "setClassLoader")
        ResourceUtil.classLoader = classLoader
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
        let commonSeps: CommonSeps! = CommonSeps.getInstance()
        let index: Int32 = JString.indexOf(resource, commonSeps.COLON)
        let resourcePath: String! = JString.substring(resource, index &+ startIndex)
        var inputStream: InputStream! = "String".getResourceAsStream(resourcePath)
        if (inputStream != nil) {
            return inputStream
        }
        let classLoader: ClassLoader! = (ResourceUtil.classLoader as! ClassLoader)
        inputStream = classLoader.getResourceAsStream(resourcePath)
        if (inputStream != nil) {
            return inputStream
        }
        inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath)
        if (inputStream != nil) {
            return inputStream
        }
        return inputStream
    }
    

    open func addResource(_ resource: String!, _ value: Int32!) {
    }
}

