/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

import J2SEForSwiftLibrary
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.ABStack
// import org.allbinary.util.ABVector

//ActualPlatform
open class StdUtil: JObject {
    fileprivate static let instance: StdUtil! = StdUtil()
    public var EMPTY_VECTOR: ABVector! = nil
    public var NULL_TABLE: ABHashtable! = nil

    private func initFields() {
    self.EMPTY_VECTOR = self.createVector()
    self.NULL_TABLE = self.createHashtable()
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> StdUtil! {
        return StdUtil.instance
    }
    

    @discardableResult public func createStack() -> ABStack! {
        return ABStack()
    }
    

    @discardableResult public func createVector() -> ABVector! {
        return ABVector()
    }
    

    @discardableResult public func createHashtable() -> ABHashtable! {
        return ABHashtable()
    }
}

