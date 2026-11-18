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
// import java.io.BufferedReader
// import java.io.BufferedWriter
// import java.io.FileReader
// import java.io.FileWriter
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil
// import org.allbinary.logic.string.StringUtil

open class BufferedIOUtil: JObject {

    public override init() {
        super.init()
    }
    

    open class func copy(_ backupFile: AbFile!, _ backupFileBak: AbFile!) {
        var line: String! = StringUtil.getInstance().EMPTY_STRING
        let tmpOut: BufferedWriter! = BufferedWriter(FileWriter(AbFileNativeUtil.get(backupFileBak)))
        let tmpIn: BufferedReader! = BufferedReader(FileReader(AbFileNativeUtil.get(backupFile)))
        while (tmpIn.ready()) {
            line = tmpIn.readLine()
            tmpOut.write(line, 0, JString.length(line))
            tmpOut.newLine()
        }
        tmpOut.flush()
    }
}

