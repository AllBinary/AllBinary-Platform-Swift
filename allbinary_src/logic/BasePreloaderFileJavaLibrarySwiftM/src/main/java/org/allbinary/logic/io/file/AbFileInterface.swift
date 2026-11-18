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
// import java.io.FilenameFilter
// import java.io.IOException
// import java.net.URI

public protocol AbFileInterface: AnyObject {
    @discardableResult func canRead() -> Bool
    @discardableResult func canWrite() -> Bool
    @discardableResult func createNewFile() -> Bool
    @discardableResult func delete() -> Bool
    func deleteOnExit()
    @discardableResult func exists() -> Bool
    @discardableResult func getAbsolutePath() -> String!
    @discardableResult func getCanonicalPath() -> String!
    @discardableResult func getParent() -> String!
    @discardableResult func getPath() -> String!
    @discardableResult func isAbsolute() -> Bool
    @discardableResult func isDirectory() -> Bool
    @discardableResult func isFile() -> Bool
    @discardableResult func isHidden() -> Bool
    @discardableResult func lastModified() -> Int64
    @discardableResult func length() -> Int64
    @discardableResult func list() -> JArray<String?>!
    @discardableResult func listWithFilter(_ filter: FilenameFilter!) -> JArray<String?>!
    @discardableResult func mkdir() -> Bool
    @discardableResult func mkdirs() -> Bool
    @discardableResult func setLastModified(_ time: Int64) -> Bool
    @discardableResult func setReadOnly() -> Bool
    @discardableResult func toString() -> String!
    @discardableResult func toURI() -> URI!
}


