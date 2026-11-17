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
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

open class AbPathData: JObject {
    fileprivate static let instance: AbPathData! = AbPathData()
    public var EXTENSION_SEP: String! = nil
    public var SEPARATORCHAR: UInt16 = 0
    public var SEPARATOR: String! = nil

    private func initFields() {
    self.EXTENSION_SEP = CommonSeps.getInstance().PERIOD
    self.SEPARATORCHAR = UInt16(("/" as Unicode.Scalar).value)
    self.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH
    }
    

    @discardableResult public static func getInstance() -> AbPathData! {
        return AbPathData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getExtensionIndex(_ filePath: String!) -> Int32 {
        let indexOfFileExtensionDelmiter: Int32 = JString.lastIndexOf(filePath, self.EXTENSION_SEP)
        let indexOfLatDelimiter: Int32 = JString.lastIndexOf(filePath, self.SEPARATORCHAR)
        if (indexOfFileExtensionDelmiter < 0) {
            return -1
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1
        }
        return indexOfFileExtensionDelmiter
    }
    

    @discardableResult open func getExtensionWithDot(_ filePath: String!) -> String! {
        let indexOfFileExtensionDelmiter: Int32 = self.getExtensionIndex(filePath)
        var `extension`: String! = StringUtil.getInstance().EMPTY_STRING
        if (indexOfFileExtensionDelmiter >= 0) {
            `extension` = JString.substring(filePath, indexOfFileExtensionDelmiter)
        }
        return `extension`
    }
    

    @discardableResult open func getExtension(_ filePath: String!) -> String! {
        let indexOfFileExtensionDelmiter: Int32 = self.getExtensionIndex(filePath)
        var `extension`: String! = StringUtil.getInstance().EMPTY_STRING
        if (indexOfFileExtensionDelmiter >= 0) {
            `extension` = JString.substring(filePath, indexOfFileExtensionDelmiter &+ 1)
        }
        return `extension`
    }
    

    @discardableResult open func getNameFromPath(_ path: String!) -> String! {
        var endIndex: Int32 = JString.lastIndexOf(path, self.SEPARATORCHAR)
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR)
        }
        if (endIndex < 0) {
            return path
        }
        if (JString.length(path) == endIndex &+ 1) {
            let categoryName: String! = JString.substring(path, 0, endIndex)
            return self.getNameFromPath(categoryName)
        } else {
            let categoryName: String! = JString.substring(path, endIndex &+ 1)
            return categoryName
        }
    }
    

    @discardableResult open func removeNameFromPath(_ path: String!) -> String! {
        var endIndex: Int32 = JString.lastIndexOf(path, self.SEPARATORCHAR)
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR)
        }
        if (endIndex < 0) {
            return StringUtil.getInstance().EMPTY_STRING
        }
        if (JString.length(path) == endIndex &+ 1) {
            return self.removeNameFromPath(JString.substring(path, 0, endIndex &- 1))
        } else {
            let pathWithoutName: String! = JString.substring(path, 0, endIndex)
            return pathWithoutName
        }
    }
}

