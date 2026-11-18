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
// import java.io.BufferedWriter
// import java.io.FileWriter
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil
// import org.allbinary.logic.io.path.AbPathData
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

open class BufferedWriterUtil: JObject {
    fileprivate static let instance: BufferedWriterUtil! = BufferedWriterUtil()
    fileprivate var logUtil: LogUtil! = nil
    fileprivate var commonStrings: CommonStrings! = nil
    fileprivate var commonLabels: CommonLabels! = nil
    fileprivate var REMOVING_OLD: String! = nil

    private func initFields() {
    self.logUtil = LogUtil.getInstance()
    self.commonStrings = CommonStrings.getInstance()
    self.commonLabels = CommonLabels.getInstance()
    self.REMOVING_OLD = "Remove old for overwriting: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult open class func getInstance() -> BufferedWriterUtil! {
        return BufferedWriterUtil.instance
    }
    

    open func overwrite(_ path: String!, _ data: String!) {
        let abFile: AbFile! = AbFile.createAbFile(path)
        if (abFile.exists()) {
            self.logUtil.putF(jstr(self.REMOVING_OLD) + jstr(path), self, self.commonStrings.CREATE)
            abFile.delete()
        } else {
            let name: String! = AbPathData.getInstance().removeNameFromPath(path)
            let abFileDirectory: AbFile! = AbFile.createAbFile(name)
            if (abFileDirectory.exists()) {
            } else {
                let stringBuilder: StringMaker! = StringMaker()
                self.logUtil.putF(stringBuilder.append(self.commonStrings.CREATE).append(self.commonLabels.COLON_SEP).append(name).toString(), self, self.commonStrings.CREATE)
                let result: Bool = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                self.logUtil.putF(stringBuilder.append(self.commonLabels.RESULT_).appendboolean(result).toString(), self, self.commonStrings.CREATE)
            }
        }
        self.write(abFile, data)
    }
    

    open func overwrite(_ abFile: AbFile!, _ data: String!) {
        if (abFile.exists()) {
            self.logUtil.putF(jstr(self.REMOVING_OLD) + jstr(abFile.getPath()), self, self.commonStrings.CREATE)
            abFile.delete()
        } else {
            let name: String! = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath())
            let abFileDirectory: AbFile! = AbFile.createAbFile(name)
            if (abFileDirectory.exists()) {
            } else {
                let stringBuilder: StringMaker! = StringMaker()
                self.logUtil.putF(stringBuilder.append(self.commonStrings.CREATE).append(self.commonLabels.COLON_SEP).append(name).toString(), self, self.commonStrings.CREATE)
                let result: Bool = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                self.logUtil.putF(stringBuilder.append(self.commonLabels.RESULT_).appendboolean(result).toString(), self, self.commonStrings.CREATE)
            }
        }
        self.write(abFile, data)
    }
    

    open func write(_ abFile: AbFile!, _ data: String!) {
        let fileOut: BufferedWriter! = BufferedWriter(FileWriter(AbFileNativeUtil.get(abFile)))
        fileOut.write(data, 0, JString.length(data))
        fileOut.newLine()
        fileOut.flush()
    }
}

