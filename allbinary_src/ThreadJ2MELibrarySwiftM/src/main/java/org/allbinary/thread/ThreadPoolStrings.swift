/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.thread

import J2SEForSwiftLibrary

open class ThreadPoolStrings: JObject {
    fileprivate static let instance: ThreadPoolStrings! = ThreadPoolStrings()
    public var ADD_TASK: String! = nil
    public var START_TASK: String! = nil
    public var COMPLETE_TASK: String! = nil

    private func initFields() {
    self.ADD_TASK = "addTask"
    self.START_TASK = "Started Task: "
    self.COMPLETE_TASK = "Completed Task: "
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    @discardableResult public static func getInstance() -> ThreadPoolStrings! {
        return ThreadPoolStrings.instance
    }
}

