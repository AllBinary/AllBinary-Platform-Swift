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
// package org.allbinary.logic.io.path

import J2SEForSwiftLibrary
// import org.allbinary.logic.io.file.FilePathData
// import org.allbinary.logic.io.file.FilePathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.string.CommonSeps

open class AbPath: JObject {
    fileprivate static let NETWORK_SEP: String! = ":/"
    fileprivate var commonSeps: CommonSeps! = nil
    fileprivate var abPathData: AbPathData! = nil
    fileprivate var abPathUtil: PathUtil! = nil
    fileprivate var EMPTY_STRING: String! = nil
    public var schema: String! = nil
    fileprivate var path: String! = nil
    public var nameP: String! = nil
    fileprivate var hasSchemaP: Bool = false
    fileprivate var numberOfSeps: Int32 = 0

    private func initFields() {
    self.commonSeps = CommonSeps.getInstance()
    self.abPathData = AbPathData.getInstance()
    self.abPathUtil = PathUtil.getInstance()
    self.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
    self.schema = self.EMPTY_STRING
    self.path = self.EMPTY_STRING
    self.nameP = self.EMPTY_STRING
    self.hasSchemaP = false
    self.numberOfSeps = 0
    }
    

    @discardableResult open class func createAbPath() -> AbPath! {
        do {
            let EMPTY_STRING: String! = StringUtil.getInstance().EMPTY_STRING
            return AbPath(EMPTY_STRING, EMPTY_STRING)
        } /* catch (Exception ex): a thrown Java exception stops the program */
    }
    

    public init(_ aPath: String!, _ name: String!) {
        super.init()
        self.initFields()
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        if (!stringValidationUtil.isEmpty(aPath)) {
            self.schema = self.getSchema(aPath)
            self.nameP = name
            self.path = self.abPathUtil.adjustEnd(self.abPathUtil.adjust(self.getPathFromPath(aPath)))
        } else {
            self.`init`()
            if (!stringValidationUtil.isEmpty(name)) {
                self.nameP = name
            }
        }
    }
    

    fileprivate func `init`() {
        self.schema = self.EMPTY_STRING
        self.setPath(self.abPathData.SEPARATOR)
        self.nameP = self.EMPTY_STRING
    }
    

    @discardableResult open func getSchema(_ aPath: String!) -> String! {
        let beginIndex: Int32 = JString.indexOf(aPath, self.commonSeps.COLON)
        if (beginIndex >= 0) {
            self.hasSchemaP = true
            return JString.substring(aPath, 0, beginIndex)
        }
        self.hasSchemaP = false
        return self.EMPTY_STRING
    }
    

    @discardableResult open func hasSchema() -> Bool {
        return self.hasSchemaP
    }
    

    @discardableResult open func getPathFromPath(_ aPath: String!) -> String! {
        let filePathData: FilePathData! = FilePathData.getInstance()
        var tempPath: String! = aPath
        if (!self.hasSchema()) {
            tempPath = self.abPathUtil.adjustStart(tempPath)
        } else {
            var beginIndex: Int32 = JString.indexOf(tempPath, self.commonSeps.COLON)
            if (beginIndex >= 0) {
                beginIndex &+= 1
                while (JString.charAt(tempPath, beginIndex) == self.abPathData.SEPARATORCHAR || JString.charAt(tempPath, beginIndex) == filePathData.SEPARATORCHAR) {
                    beginIndex &+= 1
                    self.numberOfSeps &+= 1
                    if (self.numberOfSeps > 2) {
                        jThrow(JException("Exception", "Should Not Have More Than Two Seps"))
                    }
                }
                tempPath = JString.substring(tempPath, beginIndex, JString.length(tempPath))
            }
        }
        return tempPath
    }
    

    open func setName(_ name: String!) {
        self.nameP = name
    }
    

    @discardableResult open func getName() -> String! {
        return self.nameP
    }
    

    @discardableResult open override func toString() -> String! {
        let stringBuffer: StringMaker! = StringMaker()
        if (self.hasSchema()) {
            stringBuffer.append(self.schema)
            stringBuffer.append(AbPath.NETWORK_SEP)
        }
        stringBuffer.append(self.getPath())
        stringBuffer.append(self.nameP)
        return stringBuffer.toString()
    }
    

    @discardableResult open func toFileSystemString() -> String! {
        if (self.hasSchema()) {
            let filePathData: FilePathData! = FilePathData.getInstance()
            let stringBuffer: StringMaker! = StringMaker()
            stringBuffer.append(self.schema)
            stringBuffer.append(self.commonSeps.COLON)
            stringBuffer.append(filePathData.PATH_START)
            stringBuffer.append(FilePathUtil.adjust(self.getPath()))
            stringBuffer.append(self.nameP)
            return stringBuffer.toString()
        } else {
            return jstr(FilePathUtil.adjust(self.getPath())) + jstr(self.nameP)
        }
    }
    

    @discardableResult open func getPath() -> String! {
        return self.path
    }
    

    open func setPath(_ path: String!) {
        self.path = path
    }
}

