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

open class ABRunnable: JObject, RunnableInterface {
    fileprivate var running: Bool = false

    private func initFields() {
    self.running = false
    }

    public override init() {
        super.init()
        self.initFields()
    }
    

    open func setThread(_ thread: Thread!) {
    }
    

    @discardableResult open func isRunning() -> Bool {
        return self.running
    }
    

    open func setRunning(_ running: Bool) {
        self.running = running
    }
    

    open func run() {
    }
    

    @discardableResult open func getType() -> Int32 {
        return -1
    }
}

