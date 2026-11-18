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
// import org.allbinary.logic.string.StringValidationUtil

//Used to correct user input for paths
open class PathUtil: JObject {
    fileprivate static let instance: PathUtil! = PathUtil()
    fileprivate var abPathData: AbPathData! = nil
    fileprivate var filePathData: FilePathData! = nil

    private func initFields() {
    self.abPathData = AbPathData.getInstance()
    self.filePathData = FilePathData.getInstance()
    }
    

    @discardableResult open class func getInstance() -> PathUtil! {
        return PathUtil.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open func getExtensionWithAbFilePath(_ abFilePath: AbFilePath!) -> String! {
        return self.abPathData.getExtension(abFilePath.toString())
    }
    

    @discardableResult open func getExtensionWithAbPath(_ abPath: AbPath!) -> String! {
        return self.abPathData.getExtension(abPath.toString())
    }
    

    @discardableResult open func getWithoutExtensionWithAbFilePath(_ abFilePath: AbFilePath!) -> String! {
        return self.getWithoutExtension(abFilePath.toString())
    }
    

    @discardableResult open func getWithoutExtensionWithAbPath(_ abPath: AbPath!) -> String! {
        return self.getWithoutExtension(abPath.toString())
    }
    

    @discardableResult open func getWithoutExtension(_ filePath: String!) -> String! {
        let indexOfFileExtensionDelmiter: Int32 = self.abPathData.getExtensionIndex(filePath)
        var pathWithoutExtension: String! = filePath
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = JString.substring(filePath, 0, indexOfFileExtensionDelmiter)
        }
        return pathWithoutExtension
    }
    

    @discardableResult open func isValid(_ path: String!) -> Bool {
        if (self.isValidStart(path)) {
            if (self.isValidEnd(path)) {
                return true
            }
        }
        return false
    }
    

    @discardableResult fileprivate func isValidStart(_ path: String!) -> Bool {
        if (JString.charAt(path, 0) == self.abPathData.SEPARATORCHAR || JString.charAt(path, 0) == UInt16(("." as Unicode.Scalar).value)) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult fileprivate func isValidEnd(_ path: String!) -> Bool {
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        if (stringValidationUtil.isEmpty(path)) {
            return false
        }
        if (JString.charAt(path, JString.length(path) &- 1) == self.abPathData.SEPARATORCHAR) {
            return true
        } else {
            return false
        }
    }
    

    @discardableResult open func adjustStart(_ path: String!) -> String! {
        var path: String! = path
        if (!self.isValidStart(path)) {
            path = jstr(self.abPathData.SEPARATOR) + jstr(path)
        }
        return path
    }
    

    @discardableResult open func adjustEnd(_ path: String!) -> String! {
        var path: String! = path
        if (!self.isValidEnd(path)) {
            path = jstr(path) + jstr(self.abPathData.SEPARATOR)
        }
        return path
    }
    

    @discardableResult open func adjust(_ path: String!) -> String! {
        var path: String! = path
        let stringValidationUtil: StringValidationUtil! = StringValidationUtil.getInstance()
        if (stringValidationUtil.isEmpty(path)) {
            return self.abPathData.SEPARATOR
        }
        if (JString.indexOf(path, "\\") >= 0) {
            path = JString.replace(path, UInt16(("\\" as Unicode.Scalar).value), self.abPathData.SEPARATORCHAR)
        }
        return path
    }
    

    @discardableResult open func removeNameFromPath(_ path: String!) -> AbPath! {
        var endIndex: Int32 = JString.lastIndexOf(path, self.abPathData.SEPARATOR)
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, self.filePathData.SEPARATORCHAR)
        }
        if (endIndex < 0) {
            return AbPath.createAbPath()
        }
        if (JString.length(path) == endIndex &+ 1) {
            return self.removeNameFromPath(JString.substring(path, 0, endIndex &- 1))
        } else {
            let pathWithoutName: String! = JString.substring(path, 0, endIndex)
            return AbPath(pathWithoutName, StringUtil.getInstance().EMPTY_STRING)
        }
    }
}

