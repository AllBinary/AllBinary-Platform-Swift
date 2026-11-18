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
// package org.allbinary.logic.io.file

import J2SEForSwiftLibrary
// import java.io.File
// import org.allbinary.logic.communication.log.PreLogUtil

open class FileWrapperUtil: JObject {

    public override init() {
        super.init()
    }
    

    @discardableResult open class func wrapFiles(_ files: JArray<JObject?>!) -> JArray<AbFile?>! {
        do {
            let abFileArray: JArray<AbFile?>! = JArray<AbFile?>(files.length, nil)
            do {
                var index: Int32 = files.length &- 1
                while (index >= 0) {
                    defer { index &-= 1 }
                abFileArray[index] = AbFile((files[index] as! File))
                }
            }
            return abFileArray
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    @discardableResult open class func wrapFile(_ file: File!) -> AbFile! {
        do {
            return AbFile(file)
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

