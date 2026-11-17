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
// package org.allbinary.logic.java

import J2SEForSwiftLibrary

open class FileExtensionData: JObject {
    fileprivate static let instance: FileExtensionData! = FileExtensionData()
    public var DOT_JAVA_SOURCE: String! = nil
    public var JAVA_SOURCE: String! = nil

    private func initFields() {
    self.DOT_JAVA_SOURCE = ".java"
    self.JAVA_SOURCE = "java"
    }
    

    @discardableResult public static func getInstance() -> FileExtensionData! {
        return FileExtensionData.instance
    }
    

    public override init() {
        super.init()
        self.initFields()
    }
}

