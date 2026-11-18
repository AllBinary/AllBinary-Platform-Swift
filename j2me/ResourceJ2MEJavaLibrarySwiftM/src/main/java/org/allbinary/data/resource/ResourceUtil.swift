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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

//J2ME
open class ResourceUtil: JObject {
    fileprivate static var instance: ResourceUtil! = ResourceUtil()
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
    

    @discardableResult open func getResourceAsStream(_ resource: String!) -> InputStream! {
        var inputStream: InputStream! = "String".getResourceAsStream(resource)
        if (inputStream == nil) {
            inputStream = self.getResourceAsStreamAtStart(resource, 2)
            if (inputStream == nil) {
                inputStream = self.getResourceAsStreamAtStart(resource, 1)
                if (inputStream == nil) {
                    let stringMaker: StringMaker! = StringMaker()
                    let index: Int32 = JString.lastIndexOf(resource, UInt16(("/" as Unicode.Scalar).value))
                    var resourcePath: String! = JString.substring(resource, index &+ 1)
                    inputStream = "String".getResourceAsStream(resourcePath)
                    if (inputStream == nil) {
                        resourcePath = JString.substring(resource, index)
                        inputStream = "String".getResourceAsStream(resourcePath)
                        if (inputStream == nil) {
                            let RES: String! = "res"
                            resourcePath = stringMaker.append(RES).append(JString.substring(resource, index)).toString()
                            inputStream = "String".getResourceAsStream(resourcePath)
                            if (inputStream == nil) {
                                stringMaker.delete(0, stringMaker.length())
                                resourcePath = stringMaker.append("/").append(RES).append(JString.substring(resource, index)).toString()
                                inputStream = "String".getResourceAsStream(resourcePath)
                                let COLON: String! = CommonSeps.getInstance().COLON
                                if (inputStream == nil) {
                                    stringMaker.delete(0, stringMaker.length())
                                    resourcePath = stringMaker.append(RES).append(COLON).append(JString.substring(resource, index)).toString()
                                    inputStream = "String".getResourceAsStream(resourcePath)
                                    if (inputStream == nil) {
                                        stringMaker.delete(0, stringMaker.length())
                                        resourcePath = stringMaker.append(RES).append(COLON).append(JString.substring(resource, index &+ 1)).toString()
                                        inputStream = "String".getResourceAsStream(resourcePath)
                                        if (inputStream == nil) {
                                            let RESOURCE_STRING: String! = "resource"
                                            stringMaker.delete(0, stringMaker.length())
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(JString.substring(resource, index)).toString()
                                            inputStream = "String".getResourceAsStream(resourcePath)
                                            if (inputStream == nil) {
                                                stringMaker.delete(0, stringMaker.length())
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(JString.substring(resource, index &+ 1)).toString()
                                                inputStream = "String".getResourceAsStream(resourcePath)
                                                if (inputStream == nil) {
                                                    stringMaker.delete(0, stringMaker.length())
                                                    jThrow(JException("Exception", stringMaker.append("Unable to obtain: ").append(resource).toString()))
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream
    }
    

    @discardableResult fileprivate func getResourceAsStreamAtStart(_ resource: String!, _ startIndex: Int32) -> InputStream! {
        _ = StringMaker()
        let index: Int32 = JString.indexOf(resource, CommonSeps.getInstance().COLON)
        let resourcePath: String! = JString.substring(resource, index &+ startIndex)
        let inputStream: InputStream! = "String".getResourceAsStream(resourcePath)
        if (inputStream != nil) {
            return inputStream
        }
        return inputStream
    }
    

    open func addResource(_ resource: String!, _ value: Int32!) {
    }
}

